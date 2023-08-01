import 'package:flutter/material.dart';

class GridViewComponents extends StatelessWidget {
  final String name;
  final String imagePath;
  const GridViewComponents({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0XFFDADADA).withOpacity(0.25),
        border: Border.all(
          color: const Color(0XFFFFFFFF)
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath,),
          const SizedBox(height: 10,),
          Text(name,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.w500,color: Color(0XFF141414)),)
        ],
      ),
    );
  }
}