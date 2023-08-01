import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  final String text;
  const ParagraphText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: TextAlign.center,style: const TextStyle(color: Color(0XFF474747)),);
  }
}