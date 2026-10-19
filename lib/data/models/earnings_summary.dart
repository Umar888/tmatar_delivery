import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums.dart';

part 'earnings_summary.freezed.dart';

@freezed
abstract class EarningsBar with _$EarningsBar {
  const factory EarningsBar({required String label, required double amount}) = _EarningsBar;

  factory EarningsBar.fromJson(Map<String, dynamic> json) {
    return EarningsBar(label: json['label'] as String, amount: (json['amount'] as num).toDouble());
  }
}

@freezed
abstract class EarningsSummary with _$EarningsSummary {
  const factory EarningsSummary({
    required EarningsPeriod period,
    required DateTime date,
    required String rangeLabel,
    required double total,
    required int completedOrders,
    required int cancelledOrders,
    required double distanceKm,
    required List<EarningsBar> bars,
  }) = _EarningsSummary;

  factory EarningsSummary.fromJson(Map<String, dynamic> json) {
    return EarningsSummary(
      period: EarningsPeriod.fromApi(json['period'] as String?),
      date: DateTime.parse(json['date'] as String),
      rangeLabel: json['range_label'] as String? ?? '',
      total: (json['total'] as num).toDouble(),
      completedOrders: (json['completed_orders'] as num).toInt(),
      cancelledOrders: (json['cancelled_orders'] as num).toInt(),
      distanceKm: (json['distance_km'] as num).toDouble(),
      bars: (json['bars'] as List? ?? [])
          .map((e) => EarningsBar.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );
  }
}
