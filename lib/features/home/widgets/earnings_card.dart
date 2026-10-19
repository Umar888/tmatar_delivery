import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';

class EarningsCard extends StatelessWidget {
  const EarningsCard({super.key, required this.amount, required this.onTap});

  final double amount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: AppRadius.lg,
          gradient: const LinearGradient(
            colors: AppColors.earningsGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(color: AppColors.success.withValues(alpha: 0.25), blurRadius: 16, offset: const Offset(0, 6)),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Today's Earnings",
                    style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    Formatters.currency(amount),
                    style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.18), borderRadius: AppRadius.sm),
                  child: const Icon(Icons.bar_chart_rounded, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      'View Details',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.chevron_right_rounded, color: Colors.white, size: 20),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
