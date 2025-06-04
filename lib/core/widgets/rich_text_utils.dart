import 'package:flutter/material.dart';
import 'rich_text_renderer.dart';

/// Utility functions for working with rich text documents
class RichTextUtils {
  /// Extract plain text from a rich text document
  static String extractPlainText(dynamic document) {
    if (document is List) {
      final buffer = StringBuffer();
      for (final block in document) {
        buffer.write(extractPlainText(block));
        buffer.write(' ');
      }
      return buffer.toString().trim();
    } else if (document is Map<String, dynamic>) {
      final children = document['children'] as List?;
      if (children != null) {
        final buffer = StringBuffer();
        for (final child in children) {
          if (child is Map<String, dynamic>) {
            final text = child['text'] as String?;
            if (text != null) {
              buffer.write(text);
            }
          } else if (child is String) {
            buffer.write(child);
          }
        }
        return buffer.toString();
      }
    } else if (document is String) {
      return document;
    }
    return '';
  }

  /// Check if a document has content
  static bool hasContent(dynamic document) {
    return extractPlainText(document).isNotEmpty;
  }

  /// Get a preview/excerpt from the document
  static String getPreview(dynamic document, {int maxLength = 150}) {
    final text = extractPlainText(document);
    if (text.length <= maxLength) {
      return text;
    }
    return '${text.substring(0, maxLength)}...';
  }
}

/// A simple widget for rendering rich text as plain description
class StyledRichText extends StatelessWidget {
  final dynamic document;
  final EdgeInsets? padding;
  final TextStyle? textStyle;

  const StyledRichText({
    super.key,
    required this.document,
    this.padding,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    if (!RichTextUtils.hasContent(document)) {
      return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Text(
          'No content available',
          style: textStyle ??
              Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
        ),
      );
    }

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: RichTextRenderer(
        document: document,
        defaultTextStyle: textStyle ??
            Theme.of(context).textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                ),
      ),
    );
  }
}
