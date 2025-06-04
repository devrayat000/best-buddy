import 'dart:convert';
import '../models/user_model.dart';
import '../../../../core/storage/storage_service.dart';

abstract class AuthLocalDataSource {
  Future<SessionModel?> getCachedSession();
  Future<void> cacheSession(SessionModel session);
  Future<void> clearSession();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final StorageService storageService;
  static const String _sessionKey = 'cached_session';

  AuthLocalDataSourceImpl({required this.storageService});

  @override
  Future<SessionModel?> getCachedSession() async {
    final sessionJson = await storageService.getString(_sessionKey);
    if (sessionJson != null) {
      final sessionMap = jsonDecode(sessionJson) as Map<String, dynamic>;
      return SessionModel.fromJson(sessionMap);
    }
    return null;
  }

  @override
  Future<void> cacheSession(SessionModel session) async {
    final sessionJson = jsonEncode(session.toJson());
    await storageService.setString(_sessionKey, sessionJson);
  }

  @override
  Future<void> clearSession() async {
    await storageService.remove(_sessionKey);
  }
}
