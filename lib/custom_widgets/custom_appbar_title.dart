import 'package:flutter/material.dart';

import '../consts/consts.dart';
import 'custom_container.dart';
class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return CustomContainer(
      borderColor: backgroundColor00,
      color: Colors.white,
      borderRadius: 40,
      width: screenWidth * .533,
      height: screenHeight * .0438,
      borderWidth: 0,
      child: TextFormField(
        // maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: screenHeight * .01),
          prefixIcon:const Icon(
            Icons.search,
            size: 25,
            color: Color(0xffBF00C2),
          ),
          filled: true,
          fillColor: Colors.white,
          isDense: true,
          hintText: 'Search a car',
          hintStyle:const TextStyle(
              textBaseline: TextBaseline.alphabetic,
              color: Color(0xFFC2C2C2),
              fontSize: 12),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: backgroundColor00,
              )),

        ),
      ),
    );
  }
}
