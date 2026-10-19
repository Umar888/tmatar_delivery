import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/theme/theme.dart';

// pinput 7 is built on material_ui and breaks under a regular MaterialApp, so this is a small replacement
class OtpInput extends StatefulWidget {
  const OtpInput({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.onCompleted,
    this.length = AppConstants.otpLength,
    this.hasError = false,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onCompleted;
  final int length;
  final bool hasError;

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  final _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(() => setState(() {}));
    widget.controller.addListener(_rebuild);
  }

  void _rebuild() => setState(() {});

  @override
  void dispose() {
    widget.controller.removeListener(_rebuild);
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = widget.controller.text;
    return GestureDetector(
      onTap: () => _focus.requestFocus(),
      child: Stack(
        children: [
          Opacity(
            opacity: 0,
            child: TextField(
              controller: widget.controller,
              focusNode: _focus,
              autofocus: true,
              keyboardType: TextInputType.number,
              maxLength: widget.length,
              showCursor: false,
              enableInteractiveSelection: false,
              autofillHints: const [AutofillHints.oneTimeCode],
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(counterText: '', border: InputBorder.none),
              onChanged: (v) {
                widget.onChanged(v);
                if (v.length == widget.length) widget.onCompleted(v);
              },
            ),
          ),
          Row(
            children: [
              for (var i = 0; i < widget.length; i++) ...[
                if (i > 0) const SizedBox(width: 8),
                Expanded(child: _box(i, text)),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _box(int index, String text) {
    final filled = index < text.length;
    final active = _focus.hasFocus && index == text.length.clamp(0, widget.length - 1);
    final (bg, border) = widget.hasError
        ? (AppColors.dangerLight, AppColors.danger)
        : active
        ? (AppColors.surface, AppColors.primary)
        : filled
        ? (AppColors.primaryLight, AppColors.primary)
        : (AppColors.background, AppColors.border);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: AppRadius.md,
        border: Border.all(color: border, width: active ? 1.6 : 1),
      ),
      child: Text(
        filled ? text[index] : '',
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
      ),
    );
  }
}
