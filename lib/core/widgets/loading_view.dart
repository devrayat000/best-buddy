import 'package:flutter/material.dart';

/// A generic loading view widget that can be used throughout the app
/// for consistent loading presentation.
class LoadingView extends StatelessWidget {
  /// Optional message to display below the loading indicator
  final String? message;

  /// Optional title for the loading view
  final String? title;

  /// Whether to show as a full screen loading or inline (defaults to true)
  final bool fullScreen;

  /// Optional padding around the loading content
  final EdgeInsetsGeometry? padding;

  /// Optional custom loading indicator size (defaults to 48)
  final double? size;

  /// Optional custom color for the loading indicator
  final Color? color;

  /// Optional custom stroke width for the loading indicator
  final double? strokeWidth;

  const LoadingView({
    super.key,
    this.message,
    this.title,
    this.fullScreen = true,
    this.padding,
    this.size,
    this.color,
    this.strokeWidth,
  });

  /// Factory constructor for simple inline loading (smaller)
  factory LoadingView.inline({
    String? message,
    String? title,
  }) {
    return LoadingView(
      message: message,
      title: title,
      fullScreen: false,
      size: 32,
      padding: const EdgeInsets.all(16),
    );
  }

  /// Factory constructor for page loading with message
  factory LoadingView.page({
    String? message,
    String? title,
  }) {
    return LoadingView(
      message: message ?? 'Loading...',
      title: title,
      fullScreen: true,
    );
  }

  /// Factory constructor for modal/dialog loading
  factory LoadingView.modal({
    String? message,
    String? title,
  }) {
    return LoadingView(
      message: message,
      title: title ?? 'Loading...',
      fullScreen: false,
      padding: const EdgeInsets.all(24),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final effectiveSize = size ?? (fullScreen ? 48.0 : 32.0);
    final effectiveColor = color ?? colorScheme.primary;
    final effectiveStrokeWidth = strokeWidth ?? 4.0;
    final effectivePadding = padding ??
        (fullScreen ? const EdgeInsets.all(24.0) : const EdgeInsets.all(16.0));

    Widget content = Padding(
      padding: effectivePadding,
      child: Column(
        mainAxisAlignment:
            fullScreen ? MainAxisAlignment.center : MainAxisAlignment.start,
        mainAxisSize: fullScreen ? MainAxisSize.max : MainAxisSize.min,
        children: [
          // Loading Indicator
          SizedBox(
            width: effectiveSize,
            height: effectiveSize,
            child: CircularProgressIndicator(
              color: effectiveColor,
              strokeWidth: effectiveStrokeWidth,
            ),
          ),

          // Title
          if (title != null) ...[
            SizedBox(height: fullScreen ? 16.0 : 12.0),
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
          ],

          // Message
          if (message != null) ...[
            SizedBox(height: fullScreen ? 8.0 : 6.0),
            Text(
              message!,
              style: fullScreen
                  ? theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    )
                  : theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
              textAlign: TextAlign.center,
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
