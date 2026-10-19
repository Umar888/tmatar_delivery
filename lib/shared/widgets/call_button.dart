import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/theme/app_colors.dart';
import '../../core/utils/formatters.dart';
import '../../core/utils/launcher.dart';
import 'app_snackbar.dart';

Future<void> callPhone(BuildContext context, String phone) async {
  if (await Launcher.call(phone)) return;
  await Clipboard.setData(ClipboardData(text: phone));
  if (!context.mounted) return;
  showAppSnackBar(context, "Calling isn't available here. ${Formatters.phone(phone)} copied", error: true);
}

class CallButton extends StatelessWidget {
  const CallButton({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => callPhone(context, phone),
      tooltip: 'Call',
      style: IconButton.styleFrom(backgroundColor: AppColors.primaryLight),
      icon: const Icon(Icons.call_rounded, color: AppColors.primary, size: 20),
    );
  }
}
