import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/storage/session_storage.dart';

class AuthRepository {
  AuthRepository(this._api, this._session);

  final ApiClient _api;
  final SessionStorage _session;

  Future<void> sendOtp(String phone) => _api.post(ApiEndpoints.sendOtp, body: {'phone': phone});

  Future<void> verifyOtp({required String phone, required String otp}) async {
    final data = await _api.post(ApiEndpoints.verifyOtp, body: {'phone': phone, 'otp': otp}) as Map;
    await _session.saveSession(token: data['token'] as String, phone: phone);
  }

  Future<void> logout() => _session.clear();
}
