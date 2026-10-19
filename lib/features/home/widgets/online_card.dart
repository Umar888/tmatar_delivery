import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../../shared/widgets/widgets.dart';

class OnlineCard extends StatelessWidget {
  const OnlineCard({super.key, required this.online, required this.busy, required this.onChanged});

  final bool online;
  final bool busy;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final color = online ? AppColors.success : AppColors.textSecondary;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.fromLTRB(14, 12, 10, 12),
      decoration: BoxDecoration(
        color: online ? AppColors.successLight : AppColors.muted,
        borderRadius: AppRadius.lg,
        border: Border.all(color: color.withValues(alpha: 0.25)),
      ),
      child: Row(
        children: [
          IconBadge(
            icon: online ? Icons.check_rounded : Icons.power_settings_new_rounded,
            color: color,
            size: 36,
            iconSize: 22,
            solid: true,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  online ? 'Online' : 'Offline',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: color),
                ),
                const SizedBox(height: 2),
                Text(
                  online ? 'You are receiving new orders' : 'Go online to start receiving orders',
                  style: AppTextStyles.small,
                ),
              ],
            ),
          ),
          if (busy)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2.4)),
            )
          else
            Switch(value: online, onChanged: onChanged),
        ],
      ),
    );
  }
}
