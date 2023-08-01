import 'package:flutter/material.dart';

class RoundButton  extends StatelessWidget {
  final Icon icon;
  final String txt;
  const RoundButton ({super.key, required this.icon, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0XFFFFFFFF),
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0XFFF8F8F9)
            ) 
            
          ),
          child: icon,
        ),
        Text(txt,style: const TextStyle(color: Color(0XFF26324A)),)
      ],
    );
  }
}