import 'package:flutter/material.dart';

import '../homeComponents/heading_text.dart';
import '../homeComponents/paragraph_text.dart';

class FirstComponent extends StatelessWidget {
  final String heading;
  final String paragraph;
  const FirstComponent({super.key, required this.heading, required this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            Image.asset("assets/images/firstTimeUser/Dog.png"),
            const SizedBox(height: 15,),
             HeadingText(txt: heading),
            const SizedBox(height: 8,),
             ParagraphText(text: paragraph),
            const SizedBox(height: 25,),
      ],
    );
  }
}