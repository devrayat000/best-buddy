import 'package:flutter/material.dart';

/// A generic error view widget that can be used throughout the app
/// for consistent error presentation.
class ErrorView extends StatelessWidget {
  /// The error message to display
  final String message;

  /// Optional title for the error (defaults to 'Error')
  final String? title;

  /// Optional callback for retry action
  final VoidCallback? onRetry;

  /// Optional custom icon (defaults to error_outline)
  final IconData? icon;

  /// Optional custom icon size (defaults to 64)
  final double? iconSize;

  /// Optional custom icon color (defaults to theme error color)
  final Color? iconColor;

  /// Whether to show as a full screen error or inline (defaults to true)
  final bool fullScreen;

  /// Optional padding around the error content
  final EdgeInsetsGeometry? padding;

  const ErrorView({
    super.key,
    required this.message,
    this.title,
    this.onRetry,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.fullScreen = true,
    this.padding,
  });

  /// Factory constructor for loading errors with retry functionality
  factory ErrorView.loading({
    required String message,
    required VoidCallback onRetry,
    String? title,
  }) {
    return ErrorView(
      message: message,
      title: title ?? 'Loading Error',
      onRetry: onRetry,
    );
  }

  /// Factory constructor for network errors
  factory ErrorView.network({
    String? message,
    VoidCallback? onRetry,
  }) {
    return ErrorView(
      message:
          message ?? 'Please check your internet connection and try again.',
      title: 'Network Error',
      onRetry: onRetry,
      icon: Icons.wifi_off,
    );
  }

  /// Factory constructor for not found errors
  factory ErrorView.notFound({
    required String resourceName,
    String? message,
  }) {
    return ErrorView(
      message: message ?? '$resourceName not found',
      title: 'Not Found',
      icon: Icons.search_off,
    );
  }

  /// Factory constructor for simple inline errors (smaller)
  factory ErrorView.inline({
    required String message,
    VoidCallback? onRetry,
    String? title,
  }) {
    return ErrorView(
      message: message,
      title: title,
      onRetry: onRetry,
      fullScreen: false,
      iconSize: 48,
      padding: const EdgeInsets.all(16),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final effectiveIconSize = iconSize ?? (fullScreen ? 64.0 : 48.0);
    final effectiveIconColor = iconColor ?? colorScheme.error;
    final effectiveIcon = icon ?? Icons.error_outline;
    final effectivePadding = padding ??
        (fullScreen ? const EdgeInsets.all(24.0) : const EdgeInsets.all(16.0));

    Widget content = Padding(
      padding: effectivePadding,
      child: Column(
        mainAxisAlignment:
            fullScreen ? MainAxisAlignment.center : MainAxisAlignment.start,
        mainAxisSize: fullScreen ? MainAxisSize.max : MainAxisSize.min,
        children: [
          // Error Icon
          Icon(
            effectiveIcon,
            size: effectiveIconSize,
            color: effectiveIconColor,
          ),

          SizedBox(height: fullScreen ? 16.0 : 12.0),

          // Error Title
          if (title != null)
            Text(
              title!,
              style: fullScreen
                  ? theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    )
                  : theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
              textAlign: TextAlign.center,
            ),

          if (title != null) SizedBox(height: fullScreen ? 8.0 : 6.0),

          // Error Message
          Text(
            message,
            style: fullScreen
                ? theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  )
                : theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
            textAlign: TextAlign.center,
          ),

          // Retry Button
          if (onRetry != null) ...[
            SizedBox(height: fullScreen ? 24.0 : 16.0),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary,
                foregroundColor: colorScheme.onPrimary,
                padding: EdgeInsets.symmetric(
                  horizontal: fullScreen ? 32.0 : 24.0,
                  vertical: fullScreen ? 12.0 : 8.0,
                ),
              ),
            ),
          ],
        ],
      ),
    );

    if (fullScreen) {
      return Center(child: content);
    }

    return content;
  }
}
