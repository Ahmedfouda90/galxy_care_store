import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import '../../consts/assets_data.dart';
import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_text.dart';
import '../../router_navigation/router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              AssetsData.loginBackgroundBall,
              height: MediaQuery.of(context).size.height * 0.473,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Spacer(flex: 1),
          Align(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.478,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(55),
                  topLeft: Radius.circular(55),
                ),
                color: const Color(0xffEEEEEE),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.106),
                  Image.asset(
                   AssetsData.loginLogo,
                    width: MediaQuery.of(context).size.width * 0.494,
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.028),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kSignUpPage);
                    },
                    child: CustomContainer(
                      width: MediaQuery.of(context).size.width * 0.58,
                      height: MediaQuery.of(context).size.height * 0.055,
                      borderRadius: 40,
                      color: const Color(0xFF2B2A29),
                      child: Center(
                        child: CustomText(
                          maxLines: 1,
                          text: 'Sign Up',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        maxLines: 1,
                        text: 'Have an account ?',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        textColor: const Color(0xFF818181),
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kHomePage);
                        },
                        child: CustomText(
                          maxLines: 1,
                          fontWeight: FontWeight.w500,
                          text: ' sign in',
                          fontSize: 12,
                          textColor: backgroundColor00,
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
