import 'package:flutter/material.dart';

class StepUi extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  final Widget widget3;
  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;
  const StepUi({super.key,  required this.widget1, required this.widget2, required this.widget3, required this.firstColor, required this.secondColor, required this.thirdColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: firstColor,
            child: Stack(
              children: [
                Center(child: numbering('1')),
                widget1
              ],
            ),
          ),
          Container(width: 60,height: 1,color: Colors.black,),
          CircleAvatar(
            radius: 15,
            backgroundColor: secondColor,
            child: Stack(
              children: [
                Center(child: numbering('2')),
                widget2
              ],
            ),
          ),
          Container(width: 60,height: 1,color: Colors.black,),

          CircleAvatar(
            radius: 15,
            backgroundColor: thirdColor,
            child: Stack(
              children: [
                Center(child: numbering('3')),
                widget3
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text numbering (String num) => Text(num,style: const TextStyle(color: Colors.white),);
}