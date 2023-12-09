import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      color: Color(0xFF6C6C6C),
    );
  }
}
