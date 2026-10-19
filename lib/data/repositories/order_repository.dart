import 'dart:async';

import '../../core/enums.dart';
import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../models/order.dart';

class OrderRepository {
  OrderRepository(this._api);

  final ApiClient _api;
  final _changes = StreamController<void>.broadcast();

  // fires after any status change so lists and the dashboard can refresh
  Stream<void> get changes => _changes.stream;

  Future<List<Order>> getOrders(OrderListFilter status, {HistoryFilter? filter}) async {
    final data = await _api.get(
      ApiEndpoints.orders,
      query: {'status': status.apiValue, if (filter != null) 'filter': filter.apiValue},
    ) as List;
    return data.map((e) => Order.fromJson(Map<String, dynamic>.from(e as Map))).toList();
  }

  Future<List<Order>> getHistory(HistoryFilter filter) => getOrders(OrderListFilter.history, filter: filter);

  Future<Order> getOrder(String id) async => _parse(await _api.get(ApiEndpoints.order(id)));

  Future<Order> accept(String id) => _action(ApiEndpoints.accept(id));

  Future<Order> reject(String id, String reason) => _action(ApiEndpoints.reject(id), {'reason': reason});

  Future<Order> pickup(String id, List<String> itemIds) => _action(ApiEndpoints.pickup(id), {'item_ids': itemIds});

  Future<Order> deliver(String id, String signature) => _action(ApiEndpoints.deliver(id), {'signature': signature});

  Future<Order> _action(String path, [Map<String, dynamic>? body]) async {
    final order = _parse(await _api.post(path, body: body ?? {}));
    _changes.add(null);
    return order;
  }

  Order _parse(dynamic data) => Order.fromJson(Map<String, dynamic>.from(data as Map));
}
