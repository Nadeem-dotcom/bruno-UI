import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          // width: 110,
          height: 45,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0XFFF5F2FB)
            ) 
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Logo(Logos.google,size:22,),
              const SizedBox(width: 10,),
              const Text("Google",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

            ],
          ),
        ),
        Container(
          // width: 110,
          height: 45,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0XFFF5F2FB)
            ) 
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Logo(Logos.facebook_logo,size: 22,),
              const SizedBox(width: 10,),
              const Text("Facebook",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ],
    );
  }
}