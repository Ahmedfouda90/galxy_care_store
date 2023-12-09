import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/screens/home_page/home_page.dart';
import '../../consts/consts.dart';
import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/signInOrUP_button.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import 'package:galaxy_car/screens/login_and_signup/login_screen.dart';

import '../../router_navigation/router.dart';

class SignupTwo extends StatelessWidget {
  const SignupTwo({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/6p.png',
              height: screenHeight * 0.473,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.08,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.478,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(55),
                  topLeft: Radius.circular(55),
                ),
                color: Color(0xffEEEEEE),
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.056),
                  CustomText(
                    fontSize: 20,
                    textColor: backgroundColor00,
                    text: 'Sign Up',
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: screenHeight * 0.023,
                  ),
                  SizedBox(
                    width: screenWidth * 0.563,
                    height: screenHeight * 0.055,
                    child: TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        isDense: true,
                        hintText: 'Confirm password',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: hintColor00,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.014,
                  ),
                  SizedBox(
                    width: screenWidth * 0.563,
                    height: screenHeight * 0.055,
                    child: TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        isDense: true,
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: hintColor00,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.014,
                  ),
                  SizedBox(
                    width: screenWidth * 0.563,
                    height: screenHeight * 0.055,
                    child: TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        isDense: true,
                        hintText: 'Age',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: hintColor00,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.014,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kHomePage);

                    },
                    child: CustomContainer(
                      width: screenWidth * 0.58,
                      height: screenHeight * 0.055,
                      borderRadius: 40,
                      color: const Color(0xFF2B2A29),
                      child: Center(
                        child: CustomText(
                          text: 'Sign Up',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.011,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        fontSize: 12,
                        textColor: const Color(0xFF818181),
                        text: 'Have an account? ',
                        fontWeight: FontWeight.w500,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kHomePage);

                          /*    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );*/
                        },
                        child: CustomText(
                          fontSize: 12,
                          text: 'Sign in    ',
                          fontWeight: FontWeight.w500,
                          textColor: const Color(0xFF2B2A29),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
