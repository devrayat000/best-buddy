import 'package:hive_ce_flutter/hive_flutter.dart';

abstract class StorageService {
  Future<void> init();
  Future<void> setToken(String token);
  Future<String?> getToken();
  Future<void> clearToken();
  Future<void> setUser(Map<String, dynamic> user);
  Future<Map<String, dynamic>?> getUser();
  Future<void> clearUser();
  Future<void> setInitialSetup(bool isInitial);
  Future<bool> getInitialSetup();
  Future<void> clear();

  // Generic storage methods
  Future<void> setString(String key, String value);
  Future<String?> getString(String key);
  Future<void> remove(String key);
}

class HiveStorageService implements StorageService {
  static const String _tokenBox = 'token_box';
  static const String _userBox = 'user_box';
  static const String _settingsBox = 'settings_box';

  static const String _tokenKey = 'auth_token';
  static const String _userKey = 'user_data';
  static const String _initialSetupKey = 'initial_setup';

  @override
  Future<void> init() async {
    await Hive.openBox(_tokenBox);
    await Hive.openBox(_userBox);
    await Hive.openBox(_settingsBox);
  }

  @override
  Future<void> setToken(String token) async {
    final box = Hive.box(_tokenBox);
    await box.put(_tokenKey, token);
  }

  @override
  Future<String?> getToken() async {
    final box = Hive.box(_tokenBox);
    return box.get(_tokenKey) as String?;
  }

  @override
  Future<void> clearToken() async {
    final box = Hive.box(_tokenBox);
    await box.delete(_tokenKey);
  }

  @override
  Future<void> setUser(Map<String, dynamic> user) async {
    final box = Hive.box(_userBox);
    await box.put(_userKey, user);
  }

  @override
  Future<Map<String, dynamic>?> getUser() async {
    final box = Hive.box(_userBox);
    final userData = box.get(_userKey);
    return userData != null ? Map<String, dynamic>.from(userData) : null;
  }

  @override
  Future<void> clearUser() async {
    final box = Hive.box(_userBox);
    await box.delete(_userKey);
  }

  @override
  Future<void> setInitialSetup(bool isInitial) async {
    final box = Hive.box(_settingsBox);
    await box.put(_initialSetupKey, isInitial);
  }

  @override
  Future<bool> getInitialSetup() async {
    final box = Hive.box(_settingsBox);
    return box.get(_initialSetupKey, defaultValue: true) as bool;
  }

  @override
  Future<void> clear() async {
    await clearToken();
    await clearUser();
    final settingsBox = Hive.box(_settingsBox);
    await settingsBox.clear();
  }

  @override
  Future<void> setString(String key, String value) async {
    final box = Hive.box(_settingsBox);
    await box.put(key, value);
  }

  @override
  Future<String?> getString(String key) async {
    final box = Hive.box(_settingsBox);
    return box.get(key) as String?;
  }

  @override
  Future<void> remove(String key) async {
    final box = Hive.box(_settingsBox);
    await box.delete(key);
  }
}
