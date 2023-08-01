import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String txt;
  const HeadingText({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(txt,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Color(0XFF12121B)),);
  }
}