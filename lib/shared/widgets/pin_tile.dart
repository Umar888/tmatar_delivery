import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import 'icon_badge.dart';

class PinTile extends StatelessWidget {
  const PinTile({super.key, this.size = 44});

  final double size;

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      icon: Icons.location_on_rounded,
      color: AppColors.danger,
      background: AppColors.dangerLight,
      size: size,
      iconSize: size * 0.55,
      circle: false,
    );
  }
}
