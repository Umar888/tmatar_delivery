import '../constants/app_constants.dart';

class Validators {
  Validators._();

  static final _phone = RegExp(r'^[6-9]\d{9}$');
  static final _email = RegExp(r'^[\w.+-]+@[\w-]+\.[\w.]+$');
  static final _vehicle = RegExp(r'^[A-Z]{2}\s?\d{1,2}\s?[A-Z]{1,3}\s?\d{4}$');

  static String? phone(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your mobile number';
    if (!_phone.hasMatch(v)) return 'Enter a valid 10 digit mobile number';
    return null;
  }

  static String? otp(String? value, {int length = AppConstants.otpLength}) {
    final v = value?.trim() ?? '';
    if (v.length != length) return 'Enter the $length digit OTP';
    return null;
  }

  static String? name(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return 'Name is required';
    if (v.length < 3) return 'Name is too short';
    return null;
  }

  static String? email(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return null;
    if (!_email.hasMatch(v)) return 'Enter a valid email address';
    return null;
  }

  static String? vehicleNumber(String? value) {
    final v = value?.trim().toUpperCase() ?? '';
    if (v.isEmpty) return 'Vehicle number is required';
    if (!_vehicle.hasMatch(v)) return 'Format: GJ 06 AB 1234';
    return null;
  }
}
