import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  final TextEditingController? controller;
  const AuthTextField({super.key, required this.hintText, this.icon, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: false,
      controller: controller,
      style: const TextStyle(color: Color(0XFF878787)),
      decoration: InputDecoration(
        prefixIcon:  icon,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0XFF878787)),
        prefixIconColor: const Color(0XFF878787),
        fillColor: const Color(0XFFF8F8F9),
        filled: true,
        constraints: const BoxConstraints(maxHeight: 45,),

        enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0XFFF8F8F9),
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0XFFF8F8F9),
          )
        ),
      ),
    );
  }
}