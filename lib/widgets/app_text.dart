import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final double lineHeight;
  AppText(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = Colors.black54,
      this.lineHeight = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, height: lineHeight),
    );
  }
}
