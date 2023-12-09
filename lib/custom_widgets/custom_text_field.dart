import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField(
      {Key? key,
      required this.textColor,
      required this.hinttColor,
      required this.keyboardType,
      required this.hintText,
      required this.hintFontSize,
      required this.suffixIcon,

      });

  final Color textColor;
  final Color hinttColor;
  final TextInputType keyboardType;
  final String hintText;
  final double hintFontSize;
   Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: textColor, fontSize: hintFontSize),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
          hintStyle: TextStyle(color:hinttColor),
          hintText: hintText,
          border: InputBorder.none),
    );
  }
}
