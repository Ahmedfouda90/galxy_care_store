import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/screens/login_and_signup/login_screen.dart';
import 'package:galaxy_car/screens/login_and_signup/sign_up_two.dart';
import 'package:galaxy_car/screens/login_and_signup/verification_screen.dart';

import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/signInOrUP_button.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import '../../router_navigation/router.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width/* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height/* * 1.15*/;

    return Scaffold(
        body: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                  'assets/images/6p.png',
                  height: screenHeight * .473,

                  width:double.infinity


                // MediaQuery.of(context).size.width,
              ),
            ),
            /* SizedBox(
              // height: screenHeight * .08,
            ),*/
            // Spacer(flex: 1,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*.478,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(55),
                        topLeft: Radius.circular(55)),
                    color: Color(0xffEEEEEE),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * .118,
                      ),
                      CustomText(
                          fontSize: 20,
                          textColor: backgroundColor00,
                          text: 'Sign Up',
                          fontWeight: FontWeight.w700),
                      SizedBox(
                        height: screenHeight * .023,
                      ),
                      SizedBox(
                        width: screenWidth*.563,
                        height: screenHeight*.055,
                        child: TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                            // suffixIcon: sufix,
                            // prefixIcon: Icon(Icons.search_sharp,color: bottomBarColor00,),
                            filled: true,
                            fillColor: Colors.white,
                            isDense: true,
                            hintText: '   Phone number',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color:  hintColor00,
                            ),
                            // contentPadding: EdgeInsets.only(bottom: 50),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                  strokeAlign: 5,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .023,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kVerificationPage);

                        },
                        child: CustomContainer(
                          width: screenWidth * .58,
                          height: screenHeight * .055,
                          borderRadius: 40,
                          color: Color(0xFF2B2A29),
                          child: Center(
                            child: CustomText(
                              text: 'Sign Up',
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .023,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              fontSize: 12,
                              textColor: Color(0xFF818181),
                              text: 'Have an account? ',
                              fontWeight: FontWeight.w500


                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: CustomText(
                                fontSize: 12,
                                textColor:Color(0xFF2B2A29),
                                text: 'Sign in    ',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  )),
            )

          ],
        )

    );
  }
}
