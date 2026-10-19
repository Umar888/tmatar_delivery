import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/partner_profile.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/info_sheet.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) => switch (state) {
          ProfileLoading() => const LoadingView(),
          ProfileError(:final message) => ErrorView(
            message: message,
            onRetry: () => context.read<ProfileBloc>().add(const ProfileEvent.started()),
          ),
          ProfileLoaded(:final profile) => _ProfileBody(profile: profile),
        },
      ),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody({required this.profile});

  final PartnerProfile profile;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionCard(
          child: Row(
            children: [
              Container(
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary.withValues(alpha: 0.3), width: 2),
                ),
                child: ClipOval(child: SvgPicture.asset(AppAssets.avatar)),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(profile.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 2),
                    Text(Formatters.phone(profile.phone), style: AppTextStyles.secondary),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 6,
                      children: [
                        _Pill(
                          icon: Icons.star_rounded,
                          label: profile.rating.toStringAsFixed(1),
                          color: AppColors.warning,
                        ),
                        _Pill(icon: Icons.two_wheeler_rounded, label: profile.vehicleNumber, color: AppColors.info),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        SectionCard(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(
            children: [
              _MenuTile(
                icon: Icons.person_outline_rounded,
                label: 'Personal Information',
                onTap: () => context.push(AppRoutes.editProfile),
              ),
              _MenuTile(
                icon: Icons.history_rounded,
                label: 'Order History',
                onTap: () => context.push(AppRoutes.history),
              ),
              _MenuTile(
                icon: Icons.description_outlined,
                label: 'Documents',
                onTap: () => InfoSheet.show(
                  context,
                  title: 'Documents',
                  rows: const [
                    ('Driving Licence', 'Verified'),
                    ('Aadhaar Card', 'Verified'),
                    ('Vehicle RC', 'Verified'),
                  ],
                ),
              ),
              _MenuTile(
                icon: Icons.account_balance_outlined,
                label: 'Bank Details',
                onTap: () => InfoSheet.show(
                  context,
                  title: 'Bank Details',
                  rows: [('Bank', profile.bankName), ('Account', profile.bankAccount), ('IFSC', profile.ifsc)],
                ),
              ),
              _MenuTile(icon: Icons.language_rounded, label: 'Language', trailing: profile.language),
              _MenuTile(
                icon: Icons.help_outline_rounded,
                label: 'Help & Support',
                onTap: () => callPhone(context, AppConstants.supportPhone),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        SectionCard(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: _MenuTile(
            icon: Icons.logout_rounded,
            label: 'Logout',
            color: AppColors.danger,
            showChevron: false,
            onTap: () => _confirmLogout(context),
          ),
        ),
        const SizedBox(height: 16),
        const Center(child: Text('${AppConstants.appName} v${AppConstants.appVersion}', style: AppTextStyles.small)),
      ],
    );
  }

  Future<void> _confirmLogout(BuildContext context) async {
    final bloc = context.read<ProfileBloc>();
    final yes = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout?'),
        content: const Text('You will stop receiving new orders until you log in again.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: AppColors.danger),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
    if (yes ?? false) bloc.add(const ProfileEvent.logoutRequested());
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.icon, required this.label, required this.color});

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: AppRadius.xs),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: color),
          ),
        ],
      ),
    );
  }
}

class _MenuTile extends StatelessWidget {
  const _MenuTile({
    required this.icon,
    required this.label,
    this.onTap,
    this.trailing,
    this.color,
    this.showChevron = true,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final String? trailing;
  final Color? color;
  final bool showChevron;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: color ?? AppColors.textPrimary),
      title: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w500, color: color),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailing != null) Text(trailing!, style: AppTextStyles.secondary),
          if (showChevron) const Icon(Icons.chevron_right_rounded, color: AppColors.textSecondary),
        ],
      ),
    );
  }
}
