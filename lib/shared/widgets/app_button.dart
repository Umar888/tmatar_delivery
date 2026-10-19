import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.loading = false,
    this.icon,
    this.outlined = false,
    this.color,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool loading;
  final IconData? icon;
  final bool outlined;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final action = loading ? null : onPressed;
    final fg = outlined ? (color ?? AppColors.primary) : Colors.white;

    final child = loading
        ? SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2.4, color: fg))
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[Icon(icon, size: 20), const SizedBox(width: 8)],
              Flexible(child: Text(label, overflow: TextOverflow.ellipsis)),
            ],
          );

    if (outlined) {
      return OutlinedButton(
        onPressed: action,
        style: color == null
            ? null
            : OutlinedButton.styleFrom(
                foregroundColor: color,
                side: BorderSide(color: color!),
              ),
        child: child,
      );
    }
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.primary,
        // keep the button colour while loading instead of the faded disabled look
        disabledBackgroundColor: loading ? (color ?? AppColors.primary) : null,
      ),
      child: child,
    );
  }
}
