import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    required this.child,
    required this.color,
    required this.height,
    required this.width,
    @required this.borderRadius = 25,
    @required this.borderWidth = 0,
    @required this.borderColor = Colors.white,
  });

  final Widget child;
  final double width;
  final double borderWidth;
  final double height;
  final Color color;
  final Color borderColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: child,
      width: width,
      height: height,
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(width: borderWidth, color: borderColor),
          color: color),
    );
  }
}
