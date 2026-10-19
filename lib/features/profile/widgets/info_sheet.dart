import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

class InfoSheet extends StatelessWidget {
  const InfoSheet({super.key, required this.title, required this.rows});

  final String title;
  final List<(String, String)> rows;

  static Future<void> show(BuildContext context, {required String title, required List<(String, String)> rows}) {
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: AppRadius.sheet),
      builder: (_) => InfoSheet(title: title, rows: rows),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTextStyles.title),
            const SizedBox(height: 12),
            for (final (label, value) in rows)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(child: Text(label, style: AppTextStyles.secondary)),
                    if (value == 'Verified') const Icon(Icons.verified_rounded, color: AppColors.success, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      value,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: value == 'Verified' ? AppColors.success : AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
