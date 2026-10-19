import 'package:flutter/material.dart';

import '../../core/enums.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_dimens.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({super.key, required this.status});

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    final (fg, bg, label) = switch (status) {
      OrderStatus.newOrder => (AppColors.primary, AppColors.warningLight, 'New'),
      OrderStatus.accepted => (AppColors.info, AppColors.infoLight, 'In Progress'),
      OrderStatus.pickedUp => (AppColors.info, AppColors.infoLight, 'Picked Up'),
      OrderStatus.delivered => (AppColors.success, AppColors.successLight, 'Completed'),
      OrderStatus.cancelled || OrderStatus.rejected => (AppColors.danger, AppColors.dangerLight, status.label),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: bg, borderRadius: AppRadius.xs),
      child: Text(
        label,
        style: TextStyle(color: fg, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}
