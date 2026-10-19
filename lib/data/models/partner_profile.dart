import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_profile.freezed.dart';

@freezed
abstract class PartnerProfile with _$PartnerProfile {
  const PartnerProfile._();

  const factory PartnerProfile({
    required String id,
    required String name,
    required String phone,
    required String email,
    required String city,
    required String vehicleType,
    required String vehicleNumber,
    required String language,
    required bool isOnline,
    required double rating,
    required String bankName,
    required String bankAccount,
    required String ifsc,
  }) = _PartnerProfile;

  factory PartnerProfile.fromJson(Map<String, dynamic> json) {
    return PartnerProfile(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String? ?? '',
      city: json['city'] as String? ?? '',
      vehicleType: json['vehicle_type'] as String? ?? '',
      vehicleNumber: json['vehicle_number'] as String? ?? '',
      language: json['language'] as String? ?? 'English',
      isOnline: json['is_online'] as bool? ?? false,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      bankName: json['bank_name'] as String? ?? '',
      bankAccount: json['bank_account'] as String? ?? '',
      ifsc: json['ifsc'] as String? ?? '',
    );
  }

  String get firstName => name.split(' ').first;

  // only the editable fields go back to the server
  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'city': city,
    'vehicle_type': vehicleType,
    'vehicle_number': vehicleNumber,
    'language': language,
  };
}
