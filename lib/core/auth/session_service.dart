import 'package:best_buddy_flutter/features/auth/data/graphql/auth_queries.graphql.dart';
import 'package:graphql/client.dart';

import '../storage/storage_service.dart';

class SessionService {
  final GraphQLClient _client;
  final StorageService _storageService;
  SessionService(this._client, this._storageService);

  /// Validate the current session token
  Future<SessionValidationResult> validateSession() async {
    try {
      final token = await _storageService.getToken();

      if (token == null) {
        return SessionValidationResult.noToken;
      }

      final result = await _client.query(
        Options$Query$AuthenticatedItem(
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );

      if (result.hasException) {
        // Check if it's an authentication error
        if (result.exception?.graphqlErrors.any((error) =>
                error.message.toLowerCase().contains('not authenticated') ||
                error.message.toLowerCase().contains('invalid token') ||
                error.message.toLowerCase().contains('session expired')) ??
            false) {
          return SessionValidationResult.expired;
        }
        return SessionValidationResult.error;
      }

      final authenticatedItem = result.parsedData?.profile;
      if (authenticatedItem == null) {
        return SessionValidationResult.expired;
      }

      if (authenticatedItem is Query$AuthenticatedItem$profile$$User) {
        // Update stored user data with latest info
        await _storageService.setUser({
          'id': authenticatedItem.id,
          'email': authenticatedItem.email,
          'name': authenticatedItem.name,
          'role': authenticatedItem.role,
        });
        return SessionValidationResult.valid;
      } else {
        return SessionValidationResult.expired;
      }
    } catch (e) {
      return SessionValidationResult.error;
    }
  }

  /// Check if session is close to expiring (implement based on your session duration)
  Future<bool> isSessionNearExpiry() async {
    // Since Keystone sessions don't have explicit expiry info in the token,
    // we'll implement a periodic validation strategy
    // This is a placeholder - you might want to store session creation time
    // and implement your own expiry logic
    return false;
  }

  /// Refresh session if possible (placeholder for future implementation)
  Future<SessionRefreshResult> refreshSession() async {
    // Since the backend doesn't support refresh tokens,
    // we'll just validate the current session
    final validationResult = await validateSession();

    switch (validationResult) {
      case SessionValidationResult.valid:
        return SessionRefreshResult.success;
      case SessionValidationResult.expired:
      case SessionValidationResult.noToken:
        return SessionRefreshResult.expired;
      case SessionValidationResult.error:
        return SessionRefreshResult.error;
    }
  }
}

enum SessionValidationResult {
  valid,
  expired,
  noToken,
  error,
}

enum SessionRefreshResult {
  success,
  expired,
  error,
}
