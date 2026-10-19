import 'package:intl/intl.dart';

import '../constants/app_constants.dart';

class Formatters {
  Formatters._();

  static final _currency = NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 0);
  static final _date = DateFormat('dd MMM yyyy');
  static final _dateTime = DateFormat('dd MMM yyyy, hh:mm a');
  static final _api = DateFormat('yyyy-MM-dd');
  static final _dayMonth = DateFormat('dd MMM');
  static final _monthYear = DateFormat('MMMM yyyy');
  static final _month = DateFormat('MMM');
  static final _weekday = DateFormat('E');

  static String currency(num value) => _currency.format(value);

  static String date(DateTime value) => _date.format(value);

  static String dateTime(DateTime value) => _dateTime.format(value);

  static String apiDate(DateTime value) => _api.format(value);

  static String dayMonth(DateTime value) => _dayMonth.format(value);

  static String monthYear(DateTime value) => _monthYear.format(value);

  static String month(DateTime value) => _month.format(value);

  static String weekday(DateTime value) => _weekday.format(value);

  static String orderCode(String id) => '#$id';

  static String phone(String number) => '${AppConstants.phonePrefix} $number';

  static String distance(double km) => '${km.toStringAsFixed(1)} km';

  static String items(int count) => count == 1 ? '1 item' : '$count items';

  static String timeAgo(DateTime value, {DateTime? now}) {
    final diff = (now ?? DateTime.now()).difference(value);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} mins ago';
    if (diff.inHours < 24) return '${diff.inHours} hrs ago';
    return date(value);
  }

  // riders average about 18 km/h in city traffic
  static String eta(double km) => duration(km / 18 * 60);

  static String duration(double minutes) {
    final mins = minutes.ceil().clamp(1, 9999);
    if (mins < 60) return '$mins mins';
    return '${mins ~/ 60} hr ${mins % 60} mins';
  }
}
