import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/otp_bloc.dart';
import '../widgets/otp_input.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.phone});

  final String phone;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<OtpBloc, OtpState>(
          listenWhen: (p, c) => p.status != c.status && c.status.isFailure,
          listener: (context, state) => showAppSnackBar(context, state.message ?? '', error: true),
        ),
        BlocListener<OtpBloc, OtpState>(
          listenWhen: (p, c) => p.notice != c.notice && c.notice != null,
          listener: (context, state) {
            _controller.clear();
            showAppSnackBar(context, state.notice!);
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.surface,
        appBar: AppBar(),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: IconBadge(
                  icon: Icons.sms_outlined,
                  color: AppColors.primary,
                  background: AppColors.primaryLight,
                  size: 72,
                ),
              ),
              const SizedBox(height: 24),
              const Text('Verify your number', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  text: 'Enter the ${AppConstants.otpLength} digit code sent to ',
                  children: [
                    TextSpan(
                      text: Formatters.phone(widget.phone),
                      style: const TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                style: const TextStyle(color: AppColors.textSecondary, fontSize: 15, height: 1.4),
              ),
              const SizedBox(height: 32),
              BlocBuilder<OtpBloc, OtpState>(
                buildWhen: (p, c) => p.status != c.status,
                builder: (context, state) => OtpInput(
                  controller: _controller,
                  hasError: state.status.isFailure,
                  onChanged: (v) => context.read<OtpBloc>().add(OtpEvent.otpChanged(v)),
                  onCompleted: (_) => context.read<OtpBloc>().add(const OtpEvent.submitted()),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(color: AppColors.infoLight, borderRadius: AppRadius.sm),
                child: const Row(
                  children: [
                    Icon(Icons.info_outline_rounded, size: 18, color: AppColors.info),
                    SizedBox(width: 8),
                    Text(
                      'Demo OTP is ${AppConstants.demoOtp}',
                      style: TextStyle(color: AppColors.info, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              BlocBuilder<OtpBloc, OtpState>(
                buildWhen: (p, c) => p.status != c.status,
                builder: (context, state) => AppButton(
                  label: 'Verify & Continue',
                  loading: state.status.isLoading || state.status.isSuccess,
                  onPressed: () => context.read<OtpBloc>().add(const OtpEvent.submitted()),
                ),
              ),
              const SizedBox(height: 20),
              BlocBuilder<OtpBloc, OtpState>(
                buildWhen: (p, c) => p.resendIn != c.resendIn || p.resending != c.resending,
                builder: (context, state) => Center(
                  child: state.resendIn > 0
                      ? Text.rich(
                          TextSpan(
                            text: 'Resend OTP in ',
                            children: [
                              TextSpan(
                                text: '00:${state.resendIn.toString().padLeft(2, '0')}',
                                style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          style: AppTextStyles.secondary,
                        )
                      : TextButton(
                          onPressed: state.resending
                              ? null
                              : () => context.read<OtpBloc>().add(const OtpEvent.resendRequested()),
                          child: Text(state.resending ? 'Sending...' : 'Resend OTP'),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
