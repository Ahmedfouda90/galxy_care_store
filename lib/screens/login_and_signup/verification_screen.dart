import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/screens/login_and_signup/login_screen.dart';
import 'package:galaxy_car/screens/login_and_signup/sign_up_two.dart';

import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/signInOrUP_button.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import '../../router_navigation/router.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width /* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height /* * 1.15*/;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('assets/images/6p.png',
                height: screenHeight * .473, width: double.infinity

                // MediaQuery.of(context).size.width,
                ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  // width: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .478,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(55),
                        topLeft: Radius.circular(55)),
                    color: Color(0xffEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * .047,
                        ),
                        IconButton(
                            onPressed: () {
                              GoRouter.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back)),
                        SizedBox(
                          height: screenHeight * .047,
                        ),
                        CustomText(
                            maxLines: 3,
                            fontSize: 16,
                            textColor: backgroundColor00,
                            text: 'Enter the verification code we sent to',
                            fontWeight: FontWeight.w400),

                        Center(
                          child: CustomText(
                              maxLines: 1,
                              fontSize: 18,
                              textColor: backgroundColor00,
                              text: '+20121576758',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: screenHeight * .047,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: screenWidth * .128,
                              height: screenHeight * .047,
                              child: TextFormField(
                                maxLines: 1,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(left: 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  isDense: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                        strokeAlign: 5,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * .128,
                              height: screenHeight * .047,
                              child: TextFormField(
                                maxLines: 1,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(left: 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  isDense: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                        strokeAlign: 5,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * .128,
                              height: screenHeight * .047,
                              child: TextFormField(
                                maxLines: 1,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(left: 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  isDense: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                        strokeAlign: 5,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * .128,
                              height: screenHeight * .047,
                              child: TextFormField(
                                maxLines: 1,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(left: 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  isDense: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                        strokeAlign: 5,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * .027,
                        ),
                        Center(
                          child: const SizedBox(
                            width: 126,
                            height: 18,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Resend code in',
                                    style: TextStyle(
                                      color: Color(0xFF818181),
                                      fontSize: 13,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      height: 0.12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 56 s',
                                    style: TextStyle(
                                      color: Color(0xFF2B2A29),
                                      fontSize: 13,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      height: 0.12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              GoRouter.of(context).push(AppRouter.kSignUpTwoPage);

                              /*  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupTwo()));*/
                            },
                            icon: Icon(Icons.arrow_forward)),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
