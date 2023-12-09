import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({


    required this.cirularColor
}) ;
final Color cirularColor;
  @override
  Widget build(BuildContext context) {
    return                     Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: cirularColor),
    )
    ;
  }
}



