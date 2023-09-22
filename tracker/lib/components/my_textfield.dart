import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(color: Colors.purple[100]),
        decoration: InputDecoration(
          
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    color: Colors.deepPurple, style: BorderStyle.solid)),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.solid, color: Colors.deepPurple)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.solid, color: Colors.deepPurple)),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color:Colors.purple[100])),
      ),
    );
  }
}
