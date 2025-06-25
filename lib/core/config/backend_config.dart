class BackendConfig {
  static const String _defaultBaseUrl = 'http://localhost:3000';

  /// Get the base backend URL from environment variables or use default
  static String get baseUrl {
    const envUrl = String.fromEnvironment('BACKEND_URL');
    if (envUrl.isNotEmpty) return envUrl;

    // Use the default localhost URL for development
    return _defaultBaseUrl;
  }



  /// Get the privacy policy URL
  static String get privacyPolicyUrl => '$baseUrl/privacy';

  /// Get the terms of service URL
  static String get termsOfServiceUrl => '$baseUrl/terms';

  /// Check if we're using localhost (for development)
  static bool get isLocalhost => baseUrl.contains('localhost');

  /// Get display URL for user-facing purposes
  static String get displayUrl => isLocalhost ? 'localhost:3000' : baseUrl;
}
