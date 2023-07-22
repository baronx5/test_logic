import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText; 

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style:  const TextStyle(fontSize: 18),
      decoration:  InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12,)
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12)
        )
      ),
    );
  }
}