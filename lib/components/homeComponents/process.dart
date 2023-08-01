import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class Process extends StatelessWidget {
  final String heading;
  final String paragraph;
  final String no;
  const Process({super.key, required this.heading, required this.paragraph, required this.no});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              number(no),
            const SizedBox(height: 10,),
            Container(
              height: 75,
              decoration: DottedDecoration(
              shape: Shape.line, linePosition: LinePosition.left,color: const Color(0XFF7B4CDF)),
            )
            ],
          ),
          const SizedBox(width: 15,),
           Expanded(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,style: const TextStyle(fontWeight: FontWeight.w500,color: Color(0XFF2B0404),fontSize: 20),),
                const SizedBox(height: 2,),
                Text(paragraph,style: const TextStyle(color: Color(0XFF4B4B4B)),),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Container number (String no) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0XFFCB9670),
        borderRadius: BorderRadius.circular(25),
      ),
      child:  Text(no,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0XFFFFFFFF)),),
    );
  }
}