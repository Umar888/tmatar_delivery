import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionStorage {
  SessionStorage(this._prefs) : isLoggedIn = ValueNotifier(_prefs.getString(_tokenKey) != null);

  static const _tokenKey = 'auth_token';
  static const _phoneKey = 'auth_phone';
  static const _onlineKey = 'partner_online';

  final SharedPreferences _prefs;

  // the router listens so a logout or a 401 sends the user back to login
  final ValueNotifier<bool> isLoggedIn;

  String? get token => _prefs.getString(_tokenKey);

  String? get phone => _prefs.getString(_phoneKey);

  bool get isOnline => _prefs.getBool(_onlineKey) ?? true;

  Future<void> saveSession({required String token, required String phone}) async {
    await _prefs.setString(_tokenKey, token);
    await _prefs.setString(_phoneKey, phone);
    isLoggedIn.value = true;
  }

  Future<void> setOnline(bool value) => _prefs.setBool(_onlineKey, value);

  Future<void> clear() async {
    await _prefs.remove(_tokenKey);
    await _prefs.remove(_phoneKey);
    await _prefs.remove(_onlineKey);
    isLoggedIn.value = false;
  }
}
