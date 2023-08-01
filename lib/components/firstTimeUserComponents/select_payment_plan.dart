import 'package:bruno/components/homeComponents/heading_text.dart';
import 'package:flutter/material.dart';

class SelectPaymentPlan extends StatelessWidget {
  final String headText;
  final String decsText;
  final String imagePath;
  final Color borderColor;
  const SelectPaymentPlan({super.key, required this.headText, required this.decsText, required this.imagePath, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          // height: 193,
          decoration: BoxDecoration(
            color: const Color(0XFFF9F8FF),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: borderColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset(imagePath,height: 44,width: 44,)
                  ],
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingText(txt: headText),
                      const SizedBox(height: 10,),
                      Text(decsText,style: const TextStyle(color: Color(0XFF12121B)),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}