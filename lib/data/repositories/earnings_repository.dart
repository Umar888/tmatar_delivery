import '../../core/enums.dart';
import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/utils/formatters.dart';
import '../models/earnings_summary.dart';

class EarningsRepository {
  EarningsRepository(this._api);

  final ApiClient _api;

  Future<EarningsSummary> getEarnings(EarningsPeriod period, DateTime date) async {
    final data = await _api.get(
      ApiEndpoints.earnings,
      query: {'period': period.apiValue, 'date': Formatters.apiDate(date)},
    );
    return EarningsSummary.fromJson(Map<String, dynamic>.from(data as Map));
  }
}
