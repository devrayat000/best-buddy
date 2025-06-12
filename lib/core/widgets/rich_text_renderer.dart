import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

/// A custom rich text renderer for Quill/TipTap document structures
class RichTextRenderer extends StatelessWidget {
  final dynamic document;
  final TextStyle? defaultTextStyle;
  final EdgeInsets? padding;
  final double? paragraphSpacing;
  final double? headingSpacing;

  const RichTextRenderer({
    super.key,
    required this.document,
    this.defaultTextStyle,
    this.padding,
    this.paragraphSpacing = 16.0,
    this.headingSpacing = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = defaultTextStyle ??
        Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6);

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: _buildContent(context, document, baseTextStyle),
    );
  }

  Widget _buildContent(
      BuildContext context, dynamic content, TextStyle? baseStyle) {
    if (content is List) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: content
            .map<Widget>((block) => _buildBlock(context, block, baseStyle))
            .where((widget) => widget != const SizedBox.shrink())
            .toList(),
      );
    } else if (content is Map<String, dynamic>) {
      // Handle the case where content has a 'document' property
      final document = content['document'];
      if (document != null) {
        return _buildContent(context, document, baseStyle);
      }
      return _buildBlock(context, content, baseStyle);
    } else if (content is String) {
      return Text(
        content,
        style: baseStyle,
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildBlock(
      BuildContext context, dynamic block, TextStyle? baseStyle) {
    if (block is! Map<String, dynamic>) {
      return const SizedBox.shrink();
    }

    final type = block['type'] as String?;
    final children = block['children'] as List?;

    switch (type) {
      case 'paragraph':
        return _buildParagraph(context, children, baseStyle);

      case 'heading':
        final level = block['level'] as int? ?? 1;
        return _buildHeading(context, children, level, baseStyle);

      case 'bulletList':
        return _buildBulletList(context, children, baseStyle);

      case 'orderedList':
        return _buildOrderedList(context, children, baseStyle);

      case 'listItem':
        return _buildListItem(context, children, baseStyle);

      case 'blockquote':
        return _buildBlockquote(context, children, baseStyle);

      case 'codeBlock':
        return _buildCodeBlock(context, children, baseStyle);

      case 'horizontalRule':
        return _buildHorizontalRule(context);

      default:
        // If we don't recognize the type, try to render children
        if (children != null) {
          return _buildInlineContent(context, children, baseStyle);
        }
        return const SizedBox.shrink();
    }
  }

  Widget _buildParagraph(
      BuildContext context, List? children, TextStyle? baseStyle) {
    if (children == null || children.isEmpty) {
      return SizedBox(height: paragraphSpacing);
    }

    return Padding(
      padding: EdgeInsets.only(bottom: paragraphSpacing ?? 16.0),
      child: _buildInlineContent(context, children, baseStyle),
    );
  }

  Widget _buildHeading(
      BuildContext context, List? children, int level, TextStyle? baseStyle) {
    if (children == null || children.isEmpty) {
      return SizedBox(height: headingSpacing);
    }

    TextStyle? headingStyle;
    switch (level) {
      case 1:
        headingStyle = Theme.of(context).textTheme.headlineLarge;
        break;
      case 2:
        headingStyle = Theme.of(context).textTheme.headlineMedium;
        break;
      case 3:
        headingStyle = Theme.of(context).textTheme.headlineSmall;
        break;
      case 4:
        headingStyle = Theme.of(context).textTheme.titleLarge;
        break;
      case 5:
        headingStyle = Theme.of(context).textTheme.titleMedium;
        break;
      case 6:
        headingStyle = Theme.of(context).textTheme.titleSmall;
        break;
      default:
        headingStyle = Theme.of(context).textTheme.titleLarge;
    }

    return Padding(
      padding: EdgeInsets.only(bottom: headingSpacing ?? 20.0),
      child: _buildInlineContent(
          context,
          children,
          headingStyle?.copyWith(
            fontWeight: FontWeight.bold,
          )),
    );
  }

  Widget _buildBulletList(
      BuildContext context, List? children, TextStyle? baseStyle) {
    if (children == null || children.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children
            .map<Widget>((item) => _buildListItem(
                context, item['children'], baseStyle,
                isBullet: true))
            .toList(),
      ),
    );
  }

  Widget _buildOrderedList(
      BuildContext context, List? children, TextStyle? baseStyle) {
    if (children == null || children.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children
            .asMap()
            .entries
            .map<Widget>((entry) => _buildListItem(
                  context,
                  entry.value['children'],
                  baseStyle,
                  index: entry.key + 1,
                ))
            .toList(),
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context, dynamic children, TextStyle? baseStyle,
      {bool isBullet = false, int? index}) {
    if (children == null) {
      return const SizedBox.shrink();
    }

    final bullet = isBullet ? '• ' : '${index ?? 1}. ';

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bullet,
            style: baseStyle?.copyWith(fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: _buildInlineContent(
                context, children is List ? children : [children], baseStyle),
          ),
        ],
      ),
    );
  }

  Widget _buildBlockquote(
      BuildContext context, List? children, TextStyle? baseStyle) {
    if (children == null || children.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 4.0,
          ),
        ),
        color:
            Theme.of(context).colorScheme.surfaceContainerHighest.withAlpha(77),
      ),
      child: _buildInlineContent(
        context,
        children,
        baseStyle?.copyWith(
          fontStyle: FontStyle.italic,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }

  Widget _buildCodeBlock(
      BuildContext context, List? children, TextStyle? baseStyle) {
    if (children == null || children.isEmpty) {
      return const SizedBox.shrink();
    }

    final codeText = _extractPlainText(children);

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withAlpha(51),
        ),
      ),
      child: Text(
        codeText,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontFamily: 'monospace',
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
    );
  }

  Widget _buildHorizontalRule(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 1.0,
      color: Theme.of(context).colorScheme.outline.withAlpha(51),
    );
  }

  Widget _buildInlineContent(
      BuildContext context, List children, TextStyle? baseStyle) {
    if (children.isEmpty) {
      return const SizedBox.shrink();
    }

    final spans = <TextSpan>[];

    for (final child in children) {
      if (child is Map<String, dynamic>) {
        final text = child['text'] as String?;
        if (text != null && text.isNotEmpty) {
          final style = _applyMarksFromTextNode(baseStyle, child, context);
          final href = child['link'] as String?;

          spans.add(TextSpan(
            text: text,
            style: style,
            recognizer: href != null
                ? (TapGestureRecognizer()
                  ..onTap = () => _handleLinkTap(context, href))
                : null,
          ));
        }
        // Handle nested content
        final children = child['children'] as List?;
        if (children != null) {
          final nestedSpans = _buildInlineSpans(context, children, baseStyle);
          spans.addAll(nestedSpans);
        }
      } else if (child is String && child.isNotEmpty) {
        spans.add(TextSpan(text: child, style: baseStyle));
      }
    }

    if (spans.isEmpty) {
      return const SizedBox.shrink();
    }

    return RichText(
      text: TextSpan(
        children: spans,
        style: baseStyle,
      ),
    );
  }

  List<TextSpan> _buildInlineSpans(
      BuildContext context, List children, TextStyle? baseStyle) {
    final spans = <TextSpan>[];

    for (final child in children) {
      if (child is Map<String, dynamic>) {
        final text = child['text'] as String?;
        if (text != null && text.isNotEmpty) {
          final style = _applyMarksFromTextNode(baseStyle, child, context);
          final href = child['link'] as String?;

          spans.add(TextSpan(
            text: text,
            style: style,
            recognizer: href != null
                ? (TapGestureRecognizer()
                  ..onTap = () => _handleLinkTap(context, href))
                : null,
          ));
        }
        // Handle nested content
        final nestedChildren = child['children'] as List?;
        if (nestedChildren != null) {
          final nestedSpans =
              _buildInlineSpans(context, nestedChildren, baseStyle);
          spans.addAll(nestedSpans);
        }
      } else if (child is String && child.isNotEmpty) {
        spans.add(TextSpan(text: child, style: baseStyle));
      }
    }

    return spans;
  }

  TextStyle? _applyMarksFromTextNode(TextStyle? baseStyle,
      Map<String, dynamic> textNode, BuildContext context) {
    // Start with base style or default text style
    TextStyle style = baseStyle ?? const TextStyle();

    // Check for styling properties directly on the text node
    if (textNode['bold'] == true) {
      style = style.copyWith(fontWeight: FontWeight.bold);
    }

    if (textNode['italic'] == true) {
      style = style.copyWith(fontStyle: FontStyle.italic);
    }

    if (textNode['underline'] == true) {
      style = style.copyWith(decoration: TextDecoration.underline);
    }

    if (textNode['strikethrough'] == true) {
      style = style.copyWith(decoration: TextDecoration.lineThrough);
    }

    if (textNode['code'] == true) {
      style = style.copyWith(
        fontFamily: 'monospace',
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      );
    }

    // Handle link marks
    final href = textNode['link'] as String?;
    if (href != null) {
      style = style.copyWith(
        color: Theme.of(context).colorScheme.primary,
        decoration: TextDecoration.underline,
      );
    }
    return style;
  }

  /// Show security alert and launch URL if user confirms
  Future<void> _handleLinkTap(BuildContext context, String url) async {
    // Show security confirmation dialog
    final shouldOpen = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Open External Link'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('You are about to open an external link:'),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  url,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontFamily: 'monospace',
                      ),
                ),
              ),
              const SizedBox(height: 8),
              const Text('Make sure you trust this link before proceeding.'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Open Link'),
            ),
          ],
        );
      },
    );

    // If user confirmed, launch the URL
    if (shouldOpen == true) {
      try {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(
            uri,
            mode: LaunchMode.externalApplication,
          );
        } else {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Could not open the link'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid URL format'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  String _extractPlainText(List children) {
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
}
