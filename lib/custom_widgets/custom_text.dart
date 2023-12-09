import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {Key? key,
        @required this.maxLines=1,
        required this.fontSize,
        @required this.textColor = Colors.black,
        required this.text,
        @required this.fontWeight = FontWeight.normal});

  final double fontSize;
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines:maxLines ,
      text,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontFamily:'Poppins',
        color: textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
