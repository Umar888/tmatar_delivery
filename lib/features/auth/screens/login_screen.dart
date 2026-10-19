import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        if (state.status.isSuccess) {
          context.push(AppRoutes.otp, extra: state.phone.trim());
        } else if (state.status.isFailure && state.message != null) {
          showAppSnackBar(context, state.message!, error: true);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.surface,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(36)),
                child: SvgPicture.asset(
                  AppAssets.loginPartner,
                  height: MediaQuery.sizeOf(context).height * 0.42,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Welcome\nDelivery Partner',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, height: 1.2, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Enter your mobile number to continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.textSecondary, fontSize: 15),
                    ),
                    const SizedBox(height: 28),
                    const _PhoneField(),
                    const SizedBox(height: 20),
                    BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (p, c) => p.status != c.status,
                      builder: (context, state) => AppButton(
                        label: 'Send OTP',
                        loading: state.status.isLoading,
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          context.read<LoginBloc>().add(const LoginEvent.submitted());
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline_rounded, size: 14, color: AppColors.textSecondary),
                        SizedBox(width: 6),
                        Text(
                          'We will send a ${AppConstants.otpLength} digit OTP to verify your number',
                          style: AppTextStyles.small,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PhoneField extends StatelessWidget {
  const _PhoneField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (p, c) => p.phoneError != c.phoneError,
      builder: (context, state) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 54,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: AppRadius.md,
            ),
            child: const Text(AppConstants.phonePrefix, style: AppTextStyles.cardTitle),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              maxLength: 10,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 1),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: (v) => context.read<LoginBloc>().add(LoginEvent.phoneChanged(v)),
              onSubmitted: (_) => context.read<LoginBloc>().add(const LoginEvent.submitted()),
              decoration: InputDecoration(
                hintText: 'Enter mobile number',
                counterText: '',
                errorText: state.phoneError,
                prefixIcon: const Icon(Icons.phone_iphone_rounded, color: AppColors.textSecondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
