import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  const CommonText({Key? key, required this.text, required this.fontSize, required this.textColor, required this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style:
    TextStyle(fontSize: fontSize, color: textColor, fontWeight: fontWeight),);
  }
}


