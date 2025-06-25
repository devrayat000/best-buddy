/// Utility class for handling and categorizing different types of errors
class ErrorUtils {
  /// Check if an error is network/connectivity related
  static bool isNetworkError(dynamic error) {
    // Check raw error messages for network keywords
    return _containsNetworkKeywords(error.toString());
  }

  /// Check if an error is a server error (5xx status codes)
  static bool isServerError(dynamic error) {
    return false; // No longer using HTTP status codes
  }

  /// Check if an error is a client error (4xx status codes)
  static bool isClientError(dynamic error) {
    return false; // No longer using HTTP status codes
  }

  /// Check if an error is an authentication error
  static bool isAuthError(dynamic error) {
    return _containsAuthKeywords(error.toString());
  }

  /// Extract user-friendly error message from exception
  static String getErrorMessage(dynamic error) {
    if (error == null) return 'An unknown error occurred';
    
    if (isNetworkError(error)) {
      return 'No internet connection. Please check your network settings.';
    }
    
    if (isAuthError(error)) {
      return 'Authentication failed. Please check your credentials.';
    }
    
    // Default fallback
    return 'Something went wrong. Please try again.';
  }

  /// Get a user-friendly error message without exposing technical details
  static String getUserFriendlyMessage(dynamic error) {
    if (isNetworkError(error)) {
      return 'Please check your internet connection and try again.';
    }

    if (isAuthError(error)) {
      return 'Your session has expired. Please log in again.';
    }

    return 'Something went wrong. Please try again.';
  }

  /// Get error type for analytics or debugging
  static String getErrorType(dynamic error) {
    if (isNetworkError(error)) return 'network';
    if (isAuthError(error)) return 'auth';
    return 'unknown';
  }

  /// Check if error message contains network-related keywords
  static bool _containsNetworkKeywords(String message) {
    final lowerMessage = message.toLowerCase();
    const networkKeywords = [
      'network',
      'connection',
      'internet',
      'offline',
      'timeout',
      'unreachable',
      'failed to connect',
      'no connection',
      'disconnected',
      'connection refused',
      'connection reset',
      'connection timeout',
      'host unreachable',
      'network unreachable',
    ];

    return networkKeywords.any((keyword) => lowerMessage.contains(keyword));
  }

  /// Check if error message contains auth-related keywords
  static bool _containsAuthKeywords(String message) {
    final lowerMessage = message.toLowerCase();
    const authKeywords = [
      'unauthorized',
      'authentication',
      'permission denied',
      'access denied',
      'invalid credentials',
      'token expired',
      'session expired',
      'forbidden',
      'invalid token',
      'user not found',
      'wrong password',
      'invalid password',
    ];

    return authKeywords.any((keyword) => lowerMessage.contains(keyword));
  }
}
