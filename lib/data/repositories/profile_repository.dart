import 'dart:async';

import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/storage/session_storage.dart';
import '../models/partner_profile.dart';

class ProfileRepository {
  ProfileRepository(this._api, this._session);

  final ApiClient _api;
  final SessionStorage _session;
  final _changes = StreamController<PartnerProfile>.broadcast();

  Stream<PartnerProfile> get changes => _changes.stream;

  Future<PartnerProfile> getProfile() async => _parse(await _api.get(ApiEndpoints.profile));

  Future<PartnerProfile> updateProfile(PartnerProfile profile) => _put(profile.toJson());

  Future<PartnerProfile> setOnline(bool online) async {
    final profile = await _put({'is_online': online});
    await _session.setOnline(profile.isOnline);
    return profile;
  }

  Future<PartnerProfile> _put(Map<String, dynamic> body) async {
    final profile = _parse(await _api.put(ApiEndpoints.profile, body: body));
    _changes.add(profile);
    return profile;
  }

  PartnerProfile _parse(dynamic data) => PartnerProfile.fromJson(Map<String, dynamic>.from(data as Map));
}
