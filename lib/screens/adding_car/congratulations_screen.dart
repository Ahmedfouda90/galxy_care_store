import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/assets_data.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/screens/home_page/home_page.dart';

import '../owner/owner_notification.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .077),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .151,
            ),
            Image.asset(AssetsData.congratulationImage),
            SizedBox(
              height: screenHeight * .118,
            ),
            CustomText(
                maxLines: 1,
                fontSize: 24,
                textColor: Colors.white,
                text: 'Congratulations',
                fontWeight: FontWeight.w600),
            SizedBox(
              height: screenHeight * .018,
            ),
            CustomText(
                maxLines: 2,
                fontSize: 14,
                textColor: const Color(0xFFEEEEEE),
                text:
                    'Your request has been received successfully\n              and our team will contact you.',
                fontWeight: FontWeight.w500),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
               GoRouter.of(context).push(AppRouter.kChatOne);
              },
              child: CustomContainer(
                  color:whiteColor11,
                  height: screenHeight * .056,
                  width: screenWidth * .846,
                  borderRadius: 50,
                  borderWidth: 0,
                  borderColor: whiteColor11,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AssetsData.chatIcon,width: 15,),
                      CustomText(
                          maxLines: 1,
                          fontSize: 12,
                          textColor: backgroundColor00,
                          text: '   chat',
                          fontWeight: FontWeight.w600),
                    ],
                  )),
            ),
            SizedBox(
              height: screenHeight * .023,
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kHomePage);

              },
              child: CustomContainer(
                  color: bottomBarColor00,
                  height: screenHeight * .056,
                  width: screenWidth * .846,
                  borderRadius: 50,
                  borderWidth: 0,
                  borderColor: bottomBarColor00,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.home_outlined,
                        color: Color(0xFFEEEEEE),
                      ),
                      CustomText(
                          maxLines: 1,
                          fontSize: 12,
                          textColor: Color(0xFFEEEEEE),
                          text: '   home',
                          fontWeight: FontWeight.w600),
                    ],
                  )),
            ),
            SizedBox(
              height: screenHeight * .056,
            ),
          ],
        ),
      ),
    );
  }
}
