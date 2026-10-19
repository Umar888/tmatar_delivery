import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/earnings_summary.dart';

class EarningsChart extends StatelessWidget {
  const EarningsChart({super.key, required this.bars});

  final List<EarningsBar> bars;

  @override
  Widget build(BuildContext context) {
    final maxAmount = bars.fold<double>(0, (m, b) => max(m, b.amount));
    return SizedBox(
      height: 170,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (var i = 0; i < bars.length; i++)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: _Bar(
                  bar: bars[i],
                  fraction: maxAmount == 0 ? 0 : bars[i].amount / maxAmount,
                  highlighted: i == bars.length - 1,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar({required this.bar, required this.fraction, required this.highlighted});

  final EarningsBar bar;
  final double fraction;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (highlighted)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: FittedBox(
              child: Text(
                Formatters.currency(bar.amount),
                style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppColors.primary),
              ),
            ),
          ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: fraction),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutCubic,
              builder: (_, value, _) => FractionallySizedBox(
                heightFactor: max(value, 0.03),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: AppRadius.xs,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: highlighted ? AppColors.chartActive : AppColors.chartIdle,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          bar.label,
          maxLines: 1,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontSize: 11,
            color: highlighted ? AppColors.textPrimary : AppColors.textSecondary,
            fontWeight: highlighted ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
