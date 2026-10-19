import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../../data/models/order_location.dart';
import '../../../shared/widgets/widgets.dart';

class LocationTile extends StatelessWidget {
  const LocationTile({super.key, required this.leading, required this.location, this.extra});

  final Widget leading;
  final OrderLocation location;
  final Widget? extra;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        leading,
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(location.name, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              const SizedBox(height: 2),
              Text(location.address, style: AppTextStyles.caption),
              if (extra != null) ...[const SizedBox(height: 4), extra!],
            ],
          ),
        ),
        if (location.phone.isNotEmpty) CallButton(phone: location.phone),
      ],
    );
  }
}
