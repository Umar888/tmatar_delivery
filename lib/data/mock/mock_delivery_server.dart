import 'dart:math';

import '../../core/constants/app_constants.dart';
import '../../core/enums.dart';
import '../../core/utils/date_extensions.dart';
import '../../core/utils/formatters.dart';
import '../models/order.dart';
import 'mock_seed.dart';

class MockResponse {
  const MockResponse(this.statusCode, this.body);

  final int statusCode;
  final Map<String, dynamic> body;

  factory MockResponse.ok(Object? data, [String message = 'OK']) =>
      MockResponse(200, {'success': true, 'data': data, 'message': message});

  factory MockResponse.error(int code, String message) =>
      MockResponse(code, {'success': false, 'data': null, 'message': message});
}

class MockDeliveryServer {
  MockDeliveryServer({bool online = true}) {
    _orders = MockSeed.orders(DateTime.now());
    _profile = MockSeed.profile()..['is_online'] = online;
  }

  late List<Order> _orders;
  late Map<String, dynamic> _profile;
  final _deliveredThisSession = <String>{};

  static final _phone = RegExp(r'^[6-9]\d{9}$');
  static final _orderPath = RegExp(r'^/api/delivery/orders/([A-Za-z0-9]+)(?:/(accept|reject|pickup|deliver))?$');

  MockResponse handle({
    required String method,
    required String path,
    Map<String, dynamic> query = const {},
    Object? body,
    String? authorization,
  }) {
    final data = body is Map ? Map<String, dynamic>.from(body) : <String, dynamic>{};

    if (method == 'POST' && path == '/api/auth/send-otp') return _sendOtp(data);
    if (method == 'POST' && path == '/api/auth/verify-otp') return _verifyOtp(data);

    if (!path.startsWith('/api/delivery')) return MockResponse.error(404, 'Not found');
    if (authorization == null || !authorization.startsWith('Bearer tm_')) {
      return MockResponse.error(401, 'Your session has expired. Please log in again.');
    }

    if (path == '/api/delivery/orders' && method == 'GET') return _listOrders(query);
    if (path == '/api/delivery/earnings' && method == 'GET') return _earnings(query);
    if (path == '/api/delivery/profile') {
      if (method == 'GET') return MockResponse.ok(Map.of(_profile));
      if (method == 'PUT') return _updateProfile(data);
    }

    final match = _orderPath.firstMatch(path);
    if (match != null) {
      final id = match.group(1)!;
      final action = match.group(2);
      final index = _orders.indexWhere((o) => o.id == id && o.status != OrderStatus.rejected);
      if (index == -1) return MockResponse.error(404, 'Order #$id not found');
      if (action == null && method == 'GET') return MockResponse.ok(_orders[index].toJson());
      if (method == 'POST') {
        switch (action) {
          case 'accept':
            return _accept(index);
          case 'reject':
            return _reject(index, data);
          case 'pickup':
            return _pickup(index, data);
          case 'deliver':
            return _deliver(index, data);
        }
      }
    }
    return MockResponse.error(404, 'Not found');
  }

  MockResponse _sendOtp(Map<String, dynamic> data) {
    final phone = '${data['phone'] ?? ''}'.trim();
    if (!_phone.hasMatch(phone)) return MockResponse.error(400, 'Enter a valid 10 digit mobile number');
    return MockResponse.ok({
      'phone': phone,
      'otp_length': AppConstants.otpLength,
      'resend_in': AppConstants.otpResendSeconds,
    }, 'OTP sent to ${Formatters.phone(phone)}');
  }

  MockResponse _verifyOtp(Map<String, dynamic> data) {
    final phone = '${data['phone'] ?? ''}'.trim();
    final otp = '${data['otp'] ?? ''}'.trim();
    if (!_phone.hasMatch(phone)) return MockResponse.error(400, 'Enter a valid 10 digit mobile number');
    if (otp != AppConstants.demoOtp) return MockResponse.error(400, 'Incorrect OTP. Please try again.');
    _profile['phone'] = phone;
    final token = 'tm_${phone}_${DateTime.now().millisecondsSinceEpoch}';
    return MockResponse.ok({'token': token, 'partner': Map.of(_profile)}, 'Login successful');
  }

  MockResponse _listOrders(Map<String, dynamic> query) {
    final status = query['status'];
    late List<Order> list;
    switch (status) {
      case 'new':
        list = _orders.where((o) => o.status == OrderStatus.newOrder).toList()
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
      case 'in_progress':
        list = _orders.where((o) => o.status.isInProgress).toList()..sort((a, b) => b.createdAt.compareTo(a.createdAt));
      case 'history':
        final filter = query['filter'] ?? 'all';
        list = _orders.where((o) {
          return switch (filter) {
            'completed' => o.status == OrderStatus.delivered,
            'cancelled' => o.status == OrderStatus.cancelled,
            _ => o.status == OrderStatus.delivered || o.status == OrderStatus.cancelled,
          };
        }).toList()..sort((a, b) => (b.deliveredAt ?? b.createdAt).compareTo(a.deliveredAt ?? a.createdAt));
      default:
        return MockResponse.error(400, 'Unknown order status "$status"');
    }
    return MockResponse.ok(list.map((o) => o.toJson()).toList());
  }

  MockResponse _accept(int index) {
    final order = _orders[index];
    if (_profile['is_online'] != true) {
      return MockResponse.error(403, 'You are offline. Go online to accept orders.');
    }
    if (order.status != OrderStatus.newOrder) {
      return MockResponse.error(409, 'Order ${Formatters.orderCode(order.id)} is no longer available.');
    }
    _orders[index] = order.copyWith(status: OrderStatus.accepted);
    return MockResponse.ok(_orders[index].toJson(), 'Order accepted');
  }

  MockResponse _reject(int index, Map<String, dynamic> data) {
    final order = _orders[index];
    final reason = '${data['reason'] ?? ''}'.trim();
    if (reason.isEmpty) return MockResponse.error(400, 'Please select a reason to reject.');
    if (order.status != OrderStatus.newOrder) {
      return MockResponse.error(409, 'Only new orders can be rejected.');
    }
    _orders[index] = order.copyWith(status: OrderStatus.rejected, cancelReason: reason);
    return MockResponse.ok(_orders[index].toJson(), 'Order rejected');
  }

  MockResponse _pickup(int index, Map<String, dynamic> data) {
    final order = _orders[index];
    if (order.status != OrderStatus.accepted) {
      return MockResponse.error(409, 'Order ${Formatters.orderCode(order.id)} is not ready for pickup.');
    }
    final verified = (data['item_ids'] as List? ?? []).map((e) => '$e').toSet();
    if (!order.items.every((i) => verified.contains(i.id))) {
      return MockResponse.error(400, 'Verify every item before marking as picked up.');
    }
    _orders[index] = order.copyWith(status: OrderStatus.pickedUp);
    return MockResponse.ok(_orders[index].toJson(), 'Order picked up');
  }

  MockResponse _deliver(int index, Map<String, dynamic> data) {
    final order = _orders[index];
    if (order.status != OrderStatus.pickedUp) {
      return MockResponse.error(409, 'Order ${Formatters.orderCode(order.id)} has not been picked up yet.');
    }
    if ('${data['signature'] ?? ''}'.isEmpty) {
      return MockResponse.error(400, 'Customer signature is required.');
    }
    _orders[index] = order.copyWith(status: OrderStatus.delivered, deliveredAt: DateTime.now());
    _deliveredThisSession.add(order.id);
    return MockResponse.ok(_orders[index].toJson(), 'Order delivered');
  }

  MockResponse _updateProfile(Map<String, dynamic> data) {
    if (data.containsKey('name')) {
      final name = '${data['name']}'.trim();
      if (name.length < 3) return MockResponse.error(400, 'Name must be at least 3 characters.');
    }
    if (data.containsKey('email')) {
      final email = '${data['email']}'.trim();
      if (email.isNotEmpty && !email.contains('@')) return MockResponse.error(400, 'Enter a valid email address.');
    }
    if (data.containsKey('vehicle_number') && '${data['vehicle_number']}'.trim().isEmpty) {
      return MockResponse.error(400, 'Vehicle number is required.');
    }
    const editable = ['name', 'email', 'city', 'vehicle_type', 'vehicle_number', 'language', 'is_online'];
    for (final key in editable) {
      if (data.containsKey(key)) _profile[key] = data[key] is String ? (data[key] as String).trim() : data[key];
    }
    return MockResponse.ok(Map.of(_profile), 'Profile updated');
  }

  MockResponse _earnings(Map<String, dynamic> query) {
    final period = EarningsPeriod.fromApi(query['period'] as String?);
    final date = DateTime.tryParse('${query['date'] ?? ''}') ?? DateTime.now();
    final day = date.dateOnly;

    final (start, end) = _range(period, day);
    final totals = _sum(start, end);

    final bars = <Map<String, dynamic>>[];
    switch (period) {
      case EarningsPeriod.daily:
        for (var i = 6; i >= 0; i--) {
          final d = day.subtract(Duration(days: i));
          bars.add({'label': Formatters.weekday(d), 'amount': _sum(d, d).$1});
        }
      case EarningsPeriod.weekly:
        for (var i = 3; i >= 0; i--) {
          final (s, e) = _range(period, start.subtract(Duration(days: 7 * i)));
          bars.add({'label': Formatters.dayMonth(s), 'amount': _sum(s, e).$1});
        }
      case EarningsPeriod.monthly:
        for (var i = 5; i >= 0; i--) {
          final (s, e) = _range(period, DateTime(day.year, day.month - i, 1));
          bars.add({'label': Formatters.month(s), 'amount': _sum(s, e).$1});
        }
    }

    final rangeLabel = switch (period) {
      EarningsPeriod.daily => Formatters.date(day),
      EarningsPeriod.weekly => '${Formatters.dayMonth(start)} - ${Formatters.dayMonth(end)}',
      EarningsPeriod.monthly => Formatters.monthYear(start),
    };

    return MockResponse.ok({
      'period': period.apiValue,
      'date': Formatters.apiDate(day),
      'range_label': rangeLabel,
      'total': totals.$1,
      'completed_orders': totals.$2,
      'cancelled_orders': totals.$3,
      'distance_km': double.parse(totals.$4.toStringAsFixed(1)),
      'bars': bars,
    });
  }

  (DateTime, DateTime) _range(EarningsPeriod period, DateTime day) {
    return switch (period) {
      EarningsPeriod.daily => (day, day),
      EarningsPeriod.weekly => (
        day.subtract(Duration(days: day.weekday - 1)),
        day.add(Duration(days: 7 - day.weekday)),
      ),
      EarningsPeriod.monthly => (DateTime(day.year, day.month, 1), DateTime(day.year, day.month + 1, 0)),
    };
  }

  // (amount, completed, cancelled, km) for an inclusive date range
  (double, int, int, double) _sum(DateTime start, DateTime end) {
    var amount = 0.0, completed = 0, cancelled = 0, km = 0.0;
    for (var d = start; !d.isAfter(end); d = d.add(const Duration(days: 1))) {
      final s = _syntheticDay(d);
      amount += s.$1;
      completed += s.$2;
      cancelled += s.$3;
      km += s.$4;
    }
    for (final o in _orders) {
      final at = o.deliveredAt;
      if (!_deliveredThisSession.contains(o.id) || at == null) continue;
      final d = DateTime(at.year, at.month, at.day);
      if (d.isBefore(start) || d.isAfter(end)) continue;
      amount += o.deliveryFee;
      completed++;
      km += o.distanceKm;
    }
    return (amount, completed, cancelled, km);
  }

  (double, int, int, double) _syntheticDay(DateTime d) {
    if (d.isAfter(DateOnly.today)) return (0, 0, 0, 0);
    final random = Random(d.year * 10000 + d.month * 100 + d.day);
    final completed = 8 + random.nextInt(8);
    final cancelled = random.nextInt(3);
    final amount = (completed * (55 + random.nextInt(20)) / 10).round() * 10.0;
    final km = completed * (1.8 + random.nextDouble() * 1.2);
    return (amount, completed, cancelled, km);
  }
}
