import 'package:flutter/material.dart';

import '../../../core/enums.dart';
import '../../../core/theme/theme.dart';

class OrderProgress extends StatelessWidget {
  const OrderProgress({super.key, required this.status});

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    final step = switch (status) {
      OrderStatus.newOrder => 0,
      OrderStatus.accepted => 1,
      OrderStatus.pickedUp => 2,
      OrderStatus.delivered => 3,
      _ => 0,
    };
    const labels = ['Accepted', 'Picked Up', 'Delivered'];

    return Row(
      children: [
        for (var i = 0; i < labels.length; i++) ...[
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: i == 0 ? const SizedBox() : _line(step > i)),
                    _dot(done: step > i, current: step == i),
                    Expanded(child: i == labels.length - 1 ? const SizedBox() : _line(step > i + 1)),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  labels[i],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: step > i ? FontWeight.w600 : FontWeight.w500,
                    color: step > i ? AppColors.textPrimary : AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _line(bool active) => Container(height: 3, color: active ? AppColors.success : AppColors.border);

  Widget _dot({required bool done, required bool current}) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: done ? AppColors.success : AppColors.surface,
        border: Border.all(color: done || current ? AppColors.success : AppColors.border, width: 2),
      ),
      child: done ? const Icon(Icons.check_rounded, size: 14, color: Colors.white) : null,
    );
  }
}
