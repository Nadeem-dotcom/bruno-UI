import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String txt;
  final VoidCallback onTap;
  const AuthButton({super.key, required this.txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration:  BoxDecoration(
        color: const Color(0XFFD78809),
        borderRadius: BorderRadius.circular(20)
        ),
        child: Text(txt,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}