import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/order.dart';
import '../../../shared/widgets/widgets.dart';

class ActiveOrderCard extends StatelessWidget {
  const ActiveOrderCard({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final pickedUp = order.status == OrderStatus.pickedUp;
    final place = pickedUp ? order.drop : order.pickup;

    return GestureDetector(
      onTap: () => context.push(AppRoutes.order(order.id)),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadius.lg,
          border: Border.all(color: AppColors.primary.withValues(alpha: 0.35), width: 1.4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(Formatters.orderCode(order.id), style: AppTextStyles.cardTitle),
                const Spacer(),
                StatusChip(status: order.status),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  pickedUp ? Icons.location_on_rounded : Icons.storefront_rounded,
                  color: pickedUp ? AppColors.danger : AppColors.success,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pickedUp ? 'Deliver to ${place.name}' : 'Pick up from ${place.name}',
                        style: AppTextStyles.label,
                      ),
                      Text(place.address, style: AppTextStyles.caption, maxLines: 1, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Text(
                  '${Formatters.items(order.itemCount)}  •  ${Formatters.currency(order.totalAmount)}',
                  style: AppTextStyles.caption,
                ),
                const Spacer(),
                FilledButton.icon(
                  onPressed: () => context.push(
                    AppRoutes.navigate(order.id, pickedUp ? NavigationTarget.delivery : NavigationTarget.pickup),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: AppRadius.sm),
                    visualDensity: VisualDensity.compact,
                  ),
                  icon: const Icon(Icons.navigation_rounded, size: 18),
                  label: Text(pickedUp ? 'Navigate to Drop' : 'Navigate to Pickup'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
