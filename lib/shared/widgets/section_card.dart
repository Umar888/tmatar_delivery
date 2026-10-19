import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_dimens.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.child, this.padding = const EdgeInsets.all(16), this.color});

  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    // Material instead of a coloured box so list tiles inside still show ink
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: AppRadius.lg, boxShadow: AppShadows.card),
      child: Material(
        color: color ?? AppColors.surface,
        borderRadius: AppRadius.lg,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: double.infinity,
          child: Padding(padding: padding, child: child),
        ),
      ),
    );
  }
}
