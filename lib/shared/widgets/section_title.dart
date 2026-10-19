import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
    this.title, {
    super.key,
    this.style = AppTextStyles.sectionTitle,
    this.padding = EdgeInsets.zero,
    this.action,
    this.onAction,
  });

  final String title;
  final TextStyle style;
  final EdgeInsetsGeometry padding;
  final String? action;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          if (action != null)
            GestureDetector(
              onTap: onAction,
              child: Text(action!, style: AppTextStyles.label.copyWith(color: AppColors.primary)),
            ),
        ],
      ),
    );
  }
}
