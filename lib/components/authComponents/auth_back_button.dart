import 'package:flutter/material.dart';

class AuthBackButton extends StatelessWidget {
  final VoidCallback onTap;
  const AuthBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 13,top: 13),
          child: Container(
            decoration: const BoxDecoration(
             color: Color(0XFFF8FAFC),
              shape: BoxShape.circle
            ),
            child: IconButton(onPressed: onTap, icon: const Icon(Icons.arrow_back_ios_new,color:Color(0XFF071731) ,)),
          ),
        );
  }
}