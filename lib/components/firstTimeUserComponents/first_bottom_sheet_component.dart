import 'package:flutter/material.dart';

class FirstBSComponent extends StatelessWidget {
  final Widget button;
  const FirstBSComponent({super.key, required this.button});

  @override
  Widget build(BuildContext context) {
    return Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
             child: Column(
     children: [
       const SizedBox(height: 10,),
       bottomSheetText("Total", "AED 95"),
       bottomSheetText("Point Rewarded Amount", "5"),
       const Spacer(),
       button


     ],
   ),
);
  }
    Row bottomSheetText(String text1,String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1,style: const TextStyle(color: Color(0XFF26324A)),),
        Text(text2,style: const TextStyle(fontSize: 20,color: Color(0XFF000000)),),
      ],
    );
  }

}