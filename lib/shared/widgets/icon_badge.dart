import 'package:flutter/material.dart';

import '../../core/theme/app_dimens.dart';

class IconBadge extends StatelessWidget {
  const IconBadge({
    super.key,
    required this.icon,
    required this.color,
    this.background,
    this.size = 44,
    this.iconSize,
    this.circle = true,
    this.solid = false,
  });

  final IconData icon;
  final Color color;
  final Color? background;
  final double size;
  final double? iconSize;
  final bool circle;

  // solid fills with [color] and draws a white icon
  final bool solid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: solid ? color : (background ?? color.withValues(alpha: 0.12)),
        shape: circle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: circle ? null : AppRadius.sm,
      ),
      child: Icon(icon, color: solid ? Colors.white : color, size: iconSize ?? size * 0.5),
    );
  }
}
