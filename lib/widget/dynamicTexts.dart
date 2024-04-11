import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DynamicText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const DynamicText({
    required this.text,
    required this.style,
  });

  @override
  _DynamicTextState createState() => _DynamicTextState();
}

class _DynamicTextState extends State<DynamicText> {
  late double _scaleFactor;
  late TextStyle _scaledTextStyle;

  @override
  void initState() {
    super.initState();
    _calculateScaleFactor();
  }

  void _calculateScaleFactor() {
    final textPainter = TextPainter(
      text: TextSpan(text: widget.text, style: widget.style),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: double.infinity);

    final maxLines = _getMaxLines();
    if (textPainter.didExceedMaxLines) {
      final scaleFactor = textPainter.height / (maxLines * widget.style.fontSize!);
      final scaledFontSize = widget.style.fontSize! * scaleFactor;
      setState(() {
        _scaleFactor = scaleFactor;
        _scaledTextStyle = widget.style.copyWith(fontSize: scaledFontSize);
      });
    } else {
      setState(() {
        _scaleFactor = 1.0;
        _scaledTextStyle = widget.style;
      });
    }
  }

  int _getMaxLines() {
    final screenSize = Get.mediaQuery.size;
    return screenSize.width < 600 ? 2 : 3; // Adjust as needed for your tablet layout
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: _scaleFactor,
      child: Text(
        widget.text,
        style: _scaledTextStyle,
        maxLines: _getMaxLines(),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
