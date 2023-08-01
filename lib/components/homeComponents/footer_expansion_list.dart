import 'package:flutter/material.dart';

class FooterExpansionList extends StatelessWidget {
  final String heading;
  final String paragraph;
  const FooterExpansionList({super.key, required this.heading, required this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
      color: const Color(0XFFFFFFFF),
        child: ExpansionTile(
          backgroundColor: const Color(0XFFFFFFFF),
          title: Text(heading,style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF071731)),),
          collapsedShape: const RoundedRectangleBorder(
               side: BorderSide.none,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
           childrenPadding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
          children: [
            Text(paragraph,style: const TextStyle(color: Color(0XFF8C8994)),)
          ],
          ),
      ),
    );
  }
}