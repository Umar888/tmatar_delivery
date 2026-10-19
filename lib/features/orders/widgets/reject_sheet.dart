import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/theme/theme.dart';

class RejectSheet extends StatefulWidget {
  const RejectSheet({super.key});

  static Future<String?> show(BuildContext context) => showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.surface,
    shape: const RoundedRectangleBorder(borderRadius: AppRadius.sheet),
    builder: (_) => const RejectSheet(),
  );

  @override
  State<RejectSheet> createState() => _RejectSheetState();
}

class _RejectSheetState extends State<RejectSheet> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(color: AppColors.border, borderRadius: BorderRadius.circular(2)),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Reject order?', style: AppTextStyles.title),
            const SizedBox(height: 4),
            const Text('Tell us why so we can send better orders your way', style: AppTextStyles.secondary),
            const SizedBox(height: 12),
            RadioGroup<String>(
              groupValue: _selected,
              onChanged: (v) => setState(() => _selected = v),
              child: Column(
                children: [
                  for (final reason in AppConstants.rejectReasons)
                    RadioListTile<String>(
                      value: reason,
                      title: Text(reason),
                      contentPadding: EdgeInsets.zero,
                      activeColor: AppColors.primary,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _selected == null ? null : () => Navigator.pop(context, _selected),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.danger),
              child: const Text('Reject Order'),
            ),
          ],
        ),
      ),
    );
  }
}
