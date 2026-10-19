import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/enums.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/utils/validators.dart';
import '../../../data/models/partner_profile.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/edit_profile_bloc.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      listenWhen: (p, c) => LoadStatus.settled(p.saveStatus, c.saveStatus),
      listener: (context, state) {
        final failed = state.saveStatus.isFailure;
        showAppSnackBar(context, state.saveMessage ?? '', error: failed);
        if (!failed) context.pop();
      },
      buildWhen: (p, c) => p.status != c.status,
      builder: (context, state) => Scaffold(
        appBar: AppBar(title: const Text('Personal Information')),
        body: switch (state.status) {
          LoadStatus.failure => ErrorView(
            message: state.message ?? '',
            onRetry: () => context.read<EditProfileBloc>().add(const EditProfileEvent.started()),
          ),
          LoadStatus.success => _ProfileForm(profile: state.profile!),
          _ => const LoadingView(),
        },
      ),
    );
  }
}

class _ProfileForm extends StatefulWidget {
  const _ProfileForm({required this.profile});

  final PartnerProfile profile;

  @override
  State<_ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<_ProfileForm> {
  static const _labelPadding = EdgeInsets.only(top: 16, bottom: 8);

  final _formKey = GlobalKey<FormState>();
  late final _name = TextEditingController(text: widget.profile.name);
  late final _email = TextEditingController(text: widget.profile.email);
  late final _city = TextEditingController(text: widget.profile.city);
  late final _vehicleNumber = TextEditingController(text: widget.profile.vehicleNumber);
  late String _vehicleType = AppConstants.vehicleTypes.contains(widget.profile.vehicleType)
      ? widget.profile.vehicleType
      : AppConstants.vehicleTypes.first;

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _city.dispose();
    _vehicleNumber.dispose();
    super.dispose();
  }

  void _save() {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) return;
    context.read<EditProfileBloc>().add(
      EditProfileEvent.saved(
        name: _name.text.trim(),
        email: _email.text.trim(),
        city: _city.text.trim(),
        vehicleType: _vehicleType,
        vehicleNumber: _vehicleNumber.text.trim().toUpperCase(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const SectionTitle('Full name', style: AppTextStyles.label, padding: _labelPadding),
                TextFormField(
                  controller: _name,
                  textCapitalization: TextCapitalization.words,
                  validator: Validators.name,
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.person_outline_rounded)),
                ),
                const SectionTitle('Mobile number', style: AppTextStyles.label, padding: _labelPadding),
                TextFormField(
                  initialValue: Formatters.phone(widget.profile.phone),
                  enabled: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone_iphone_rounded),
                    suffixIcon: Icon(Icons.verified_rounded, color: AppColors.success),
                  ),
                ),
                const SectionTitle('Email', style: AppTextStyles.label, padding: _labelPadding),
                TextFormField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  validator: Validators.email,
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.mail_outline_rounded)),
                ),
                const SectionTitle('City', style: AppTextStyles.label, padding: _labelPadding),
                TextFormField(
                  controller: _city,
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.location_city_rounded)),
                ),
                const SectionTitle('Vehicle type', style: AppTextStyles.label, padding: _labelPadding),
                Wrap(
                  spacing: 8,
                  children: [
                    for (final type in AppConstants.vehicleTypes)
                      ChoiceChip(
                        label: Text(type),
                        selected: _vehicleType == type,
                        onSelected: (_) => setState(() => _vehicleType = type),
                        selectedColor: AppColors.primaryLight,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: _vehicleType == type ? AppColors.primary : AppColors.textSecondary,
                        ),
                      ),
                  ],
                ),
                const SectionTitle('Vehicle number', style: AppTextStyles.label, padding: _labelPadding),
                TextFormField(
                  controller: _vehicleNumber,
                  textCapitalization: TextCapitalization.characters,
                  inputFormatters: [UpperCaseFormatter()],
                  validator: Validators.vehicleNumber,
                  decoration: const InputDecoration(
                    hintText: 'GJ 06 AB 1234',
                    prefixIcon: Icon(Icons.two_wheeler_rounded),
                  ),
                ),
              ],
            ),
          ),
        ),
        BottomBar(
          child: BlocBuilder<EditProfileBloc, EditProfileState>(
            buildWhen: (p, c) => p.saveStatus != c.saveStatus,
            builder: (context, state) =>
                AppButton(label: 'Save Changes', loading: state.saveStatus.isLoading, onPressed: _save),
          ),
        ),
      ],
    );
  }
}

class UpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) =>
      newValue.copyWith(text: newValue.text.toUpperCase());
}
