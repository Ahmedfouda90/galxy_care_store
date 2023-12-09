import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/screens/home_page/failed_search.dart';
import 'package:galaxy_car/screens/home_page/search_result.dart';

import '../consts/consts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType = TextInputType.emailAddress,
    this.borderColor = Colors.white54,
  });

  final String hintText;

  final TextInputType keyboardType;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController textController =
        TextEditingController(); // Add a TextEditingController

    String formData = "";

    return SizedBox(
      width: screenWidth * .533,
      height: screenHeight * .0438,
      child: TextFormField(
        maxLines: 1,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          prefixIcon: Icon(
            Icons.search_sharp,
            color: bottomBarColor00,
          ),
          filled: true,
          fillColor: whiteColor00,
          isDense: true,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: hintColor00,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
                width: 2,
                strokeAlign: 5,
              ),
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }
}
