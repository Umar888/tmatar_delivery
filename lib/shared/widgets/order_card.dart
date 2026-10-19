import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/formatters.dart';
import '../../data/models/order.dart';
import 'section_card.dart';
import 'status_chip.dart';
import 'store_tile.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order, this.onTap, this.trailing, this.showDate = false});

  final Order order;
  final VoidCallback? onTap;
  final Widget? trailing;
  final bool showDate;

  @override
  Widget build(BuildContext context) {
    final time = showDate
        ? Formatters.dateTime(order.deliveredAt ?? order.createdAt)
        : Formatters.timeAgo(order.createdAt);

    return GestureDetector(
      onTap: onTap,
      child: SectionCard(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            const StoreTile(size: 48),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Formatters.orderCode(order.id), style: AppTextStyles.itemTitle),
                  const SizedBox(height: 3),
                  Text(
                    '${Formatters.items(order.itemCount)}  •  ${Formatters.distance(order.distanceKm)}',
                    style: AppTextStyles.caption,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(Formatters.currency(order.totalAmount), style: AppTextStyles.itemTitle),
                      const SizedBox(width: 8),
                      const Icon(Icons.schedule_rounded, size: 13, color: AppColors.textSecondary),
                      const SizedBox(width: 3),
                      Flexible(
                        child: Text(time, overflow: TextOverflow.ellipsis, style: AppTextStyles.small),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            trailing ?? StatusChip(status: order.status),
          ],
        ),
      ),
    );
  }
}
