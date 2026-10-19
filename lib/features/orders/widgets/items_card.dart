import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/order.dart';
import '../../../shared/widgets/widgets.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Items (${order.itemCount})', style: AppTextStyles.cardTitle),
          const SizedBox(height: 8),
          for (final item in order.items)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  ProductImage(path: item.image, size: 48),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.name, style: AppTextStyles.label),
                        Text(item.unit, style: AppTextStyles.caption),
                      ],
                    ),
                  ),
                  Text('x${item.quantity}', style: AppTextStyles.secondary),
                  SizedBox(
                    width: 64,
                    child: Text(
                      Formatters.currency(item.total),
                      textAlign: TextAlign.right,
                      style: AppTextStyles.label,
                    ),
                  ),
                ],
              ),
            ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Divider()),
          Row(
            children: [
              const Text('Total Amount', style: AppTextStyles.cardTitle),
              const Spacer(),
              Text(
                Formatters.currency(order.totalAmount),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(color: AppColors.successLight, borderRadius: AppRadius.sm),
            child: Row(
              children: [
                const Icon(Icons.account_balance_wallet_outlined, size: 18, color: AppColors.success),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Your earning for this order',
                    style: TextStyle(color: AppColors.success, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  Formatters.currency(order.deliveryFee),
                  style: const TextStyle(color: AppColors.success, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
