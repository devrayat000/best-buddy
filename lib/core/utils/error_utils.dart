import 'package:graphql/client.dart';

/// Utility class for handling and categorizing different types of errors
class ErrorUtils {
  /// Check if an error is network/connectivity related
  static bool isNetworkError(dynamic error) {
    if (error is OperationException) {
      // Check GraphQL context for connectivity error marker
      if (error.graphqlErrors
          .any((e) => e.extensions?['type'] == 'connectivity')) {
        return true;
      }

      // Check link exceptions for network errors
      if (error.linkException != null) {
        final linkException = error.linkException!;
        return linkException is HttpLinkServerException ||
            linkException is NetworkException ||
            _containsNetworkKeywords(linkException.toString());
      }
    }

    // Check raw error messages for network keywords
    return _containsNetworkKeywords(error.toString());
  }

  /// Check if an error is a server error (5xx status codes)
  static bool isServerError(dynamic error) {
    if (error is OperationException && error.linkException != null) {
      final linkException = error.linkException!;
      if (linkException is HttpLinkServerException) {
        final statusCode = linkException.response.statusCode;
        return statusCode >= 500 && statusCode < 600;
      }
    }
    return false;
  }

  /// Check if an error is a client error (4xx status codes)
  static bool isClientError(dynamic error) {
    if (error is OperationException && error.linkException != null) {
      final linkException = error.linkException!;
      if (linkException is HttpLinkServerException) {
        final statusCode = linkException.response.statusCode;
        return statusCode >= 400 && statusCode < 500;
      }
    }
    return false;
  }

  /// Check if an error is an authentication error (401, 403)
  static bool isAuthError(dynamic error) {
    if (error is OperationException && error.linkException != null) {
      final linkException = error.linkException!;
      if (linkException is HttpLinkServerException) {
        final statusCode = linkException.response.statusCode;
        return statusCode == 401 || statusCode == 403;
      }
    }

    // Check GraphQL errors for auth-related messages
    if (error is OperationException) {
      return error.graphqlErrors.any((e) =>
          e.message.toLowerCase().contains('unauthorized') ||
          e.message.toLowerCase().contains('forbidden') ||
          e.message.toLowerCase().contains('authentication') ||
          e.extensions?['code'] == 'UNAUTHENTICATED');
    }

    return false;
  }

  /// Get a user-friendly error message without exposing technical details
  static String getUserFriendlyMessage(dynamic error) {
    if (isNetworkError(error)) {
      return 'Please check your internet connection and try again.';
    }

    if (isAuthError(error)) {
      return 'Your session has expired. Please log in again.';
    }

    if (isServerError(error)) {
      return 'Our servers are experiencing issues. Please try again later.';
    }

    if (isClientError(error)) {
      return 'There was a problem with your request. Please try again.';
    }

    // For GraphQL errors, check if there's a user-friendly message
    if (error is OperationException && error.graphqlErrors.isNotEmpty) {
      final firstError = error.graphqlErrors.first;
      final message = firstError.message;

      // Only show the message if it doesn't contain technical details
      if (!_containsTechnicalKeywords(message)) {
        return message;
      }
    }

    return 'Something went wrong. Please try again.';
  }

  /// Get error type for analytics or debugging
  static String getErrorType(dynamic error) {
    if (isNetworkError(error)) return 'network';
    if (isAuthError(error)) return 'auth';
    if (isServerError(error)) return 'server';
    if (isClientError(error)) return 'client';
    return 'unknown';
  }

  /// Check if a string contains network-related keywords
  static bool _containsNetworkKeywords(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.contains('network') ||
        lowerText.contains('connection') ||
        lowerText.contains('timeout') ||
        lowerText.contains('unreachable') ||
        lowerText.contains('socket') ||
        lowerText.contains('host') ||
        lowerText.contains('dns') ||
        lowerText.contains('connectivity');
  }

  /// Check if a string contains technical keywords that shouldn't be shown to users
  static bool _containsTechnicalKeywords(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.contains('stack trace') ||
        lowerText.contains('exception') ||
        lowerText.contains('null pointer') ||
        lowerText.contains('graphql') ||
        lowerText.contains('resolver') ||
        lowerText.contains('query') ||
        lowerText.contains('mutation') ||
        lowerText.contains('subscription') ||
        lowerText.contains('variable') ||
        lowerText.contains('field') ||
        lowerText.contains('schema');
  }
}
