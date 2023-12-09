import 'package:flutter/material.dart';

import '../consts/consts.dart';
import '../screens/adding_car/specifications.dart';
import 'custom_container.dart';
import 'custom_text.dart';

class CustomContinueButton extends StatelessWidget {
  CustomContinueButton({Key? key, required this.onTap});

  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: CustomContainer(
          color: bottomBarColor00,
          height: screenHeight * .056,
          width: screenWidth * .846,
          borderRadius: 50,
          borderWidth: 0,
          borderColor: bottomBarColor00,
          child: Center(
            child: CustomText(
              textColor: Color(0xFFEEEEEE),
              fontSize: 12,
              fontWeight: FontWeight.w700,
              text: 'Continue',
            ),
          )),
    );
  }
}
