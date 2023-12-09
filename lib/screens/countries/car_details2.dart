import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/screens/chat/chatOne.dart';
import 'package:galaxy_car/screens/countries/all_countries.dart';
import 'package:galaxy_car/screens/login_and_signup/login_screen.dart';
import 'package:galaxy_car/screens/login_and_signup/verification_screen.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_notification_icon.dart';
import '../../custom_widgets/custom_text.dart';
import '../../router_navigation/router.dart';
import '../../test/slider_test.dart';
import '../../widgets_body/dar_details_body/car_pics.dart';

class CarDetailsTwo extends StatefulWidget {
  const CarDetailsTwo({super.key});

  @override
  State<CarDetailsTwo> createState() => _CarDetailsTwoState();
}

class _CarDetailsTwoState extends State<CarDetailsTwo> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width /* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height /* * 1.15*/;


    return Scaffold(
        appBar: AppBar(
          leading: CustomArrowBack(),

          title: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kTestScreen);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.public,
                  color: Color(0xffEEEEEE),
                ),
                CustomText(
                    maxLines: 1,
                    fontSize: 20,
                    textColor: Color(0xffEEEEEE),
                    text: '   UAE',
                    fontWeight: FontWeight.w700)
              ],
            ),
          ),

          centerTitle: true,
          actions: [
            CustomNotificationIcon()


          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth * .072),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: screenHeight * .03,
              ),

              Row(
                children: [
                  Image.asset(
                    'assets/images/Group 33977.png',
                  ),
                  SizedBox(
                    width: screenWidth * .03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          maxLines: 1,
                          fontSize: 14,
                          textColor: greyColor00,
                          text: 'Hyundai TUC',
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: 5,
                      ),
                      CustomText(
                          maxLines: 1,
                          fontSize: 22,
                          textColor: whiteColor00,
                          text: 'Ven 90 zo',
                          fontWeight: FontWeight.w500),
                    ],
                  )
                ],
              ),
              //this for the earth logo in background and car images
              CarImages(),
              // just text
              SizedBox(
                height: screenHeight * .01,
              ),
              CustomText(
                  maxLines: 1,
                  fontSize: 16,
                  textColor: const Color(0xFFFFFFFF),
                  text: 'Specifications',
                  fontWeight: FontWeight.w500),
              SizedBox(height: screenHeight * .011),
              ConstrainedBox(
                constraints:
                BoxConstraints(maxHeight: 70, maxWidth: double.infinity),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, int index) => Padding(
                      padding: EdgeInsets.only(right: screenWidth * .03),
                      child: Container(
                        width: screenWidth * .343,
                        height: screenHeight * .086,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12,
                            border:
                            Border.all(color: Colors.grey, width: 1.3)),
                        child: Padding(
                          padding: EdgeInsets.only(left: screenWidth * .04),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: screenHeight * .012,
                              ),
                              CustomText(
                                  maxLines: 1,
                                  fontSize: 10,
                                  textColor: Color(0xFFFFFFFF),
                                  text: 'Model',
                                  fontWeight: FontWeight.w400),
                              SizedBox(
                                height: screenHeight * .008,
                              ),
                              CustomText(
                                  maxLines: 1,
                                  fontSize: 12,
                                  textColor: Color(0xFFFFFFFF),
                                  text: "Hyundai Sonata",
                                  fontWeight: FontWeight.w600),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: screenHeight * .035,
              ),
              //just text

              Padding(
                padding: EdgeInsets.only(right: screenWidth * .072),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth * .231,
                      height: screenHeight * .056,
                      decoration: BoxDecoration(
                          color: greyColor00,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/امارات.png',
                            width: 20,
                          ),
                          //assets/images/Vector (5).png
                          CustomText(
                              maxLines: 1,
                              fontSize: 12,
                              textColor: whiteColor11,
                              text: '  UEA',
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * .243,
                      height: screenHeight * .056,
                      decoration: BoxDecoration(
                          color: greyColor00,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: CustomText(
                            maxLines: 1,
                            fontSize: 12,
                            textColor: yellowColor00,
                            text: 'AED' + '  18,500',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: screenWidth * .233,
                      height: screenHeight * .056,
                      decoration: BoxDecoration(
                          color: greyColor00,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: CustomText(
                            maxLines: 1,
                            fontSize: 12,
                            textColor: greenColor00,
                            text: 'Used',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * .035,
              ),
              CustomText(
                  maxLines: 1,
                  fontSize: 16,
                  textColor: Color(0xFFFFFFFF),
                  text: 'Condition',
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: screenHeight * .015,
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * .072),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        maxLines: 2,
                        fontSize: 12,
                        textColor: Color(0xFFFFFFFF),
                        text:
                        'Excellent condition, well-maintained with regular servicing.',
                        fontWeight: FontWeight.w400),
                    SizedBox(
                      height: screenHeight * .035,
                    ),
                    CustomText(
                        maxLines: 1,
                        fontSize: 16,
                        textColor: Color(0xFFFFFFFF),
                        text: 'Features',
                        fontWeight: FontWeight.w500),
                    SizedBox(
                      height: screenHeight * .011,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 8 * 20),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(left: 10),
                        // shrinkWrap: true,
                        // clipBehavior: Clip.none,
                        itemExtent: 20,
                        itemCount: 8,
                        itemBuilder: (context, index) => Row(
                          children: [
                            Container(
                              width: 4,
                              height: 4,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomText(
                                maxLines: 3,
                                fontSize: 12,
                                textColor: Color(0xFFFFFFFF),
                                text: 'Touchscreen infotainment system',
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * .035),
                    CustomText(
                        maxLines: 1,
                        fontSize: 16,
                        textColor: Color(0xFFFFFFFF),
                        text: 'Selling conditions',
                        fontWeight: FontWeight.w500),
                    SizedBox(
                      height: screenHeight * .011,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 8 * 20),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(left: 10),
                        // shrinkWrap: true,
                        // clipBehavior: Clip.none,
                        itemExtent: 20,
                        itemCount: 8,
                        itemBuilder: (context, index) => CustomText(
                            maxLines: 1,
                            fontSize: 12,
                            textColor: Color(0xFFFFFFFF),
                            text: '1 . ' + 'Payment terms',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: screenHeight * .07),
                    CustomText(
                        maxLines: 1,
                        fontSize: 16,
                        textColor: Color(0xFFFFFFFF),
                        text: 'More details',
                        fontWeight: FontWeight.w500),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * .017,
              ),

              Padding(
                padding: EdgeInsets.only(right: screenWidth * .077),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth * .4,
                      height: screenHeight * .056,
                      decoration: BoxDecoration(
                          color: whiteColor00,
                          borderRadius: BorderRadius.circular(23)),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: backgroundColor00,
                          ),
                          CustomText(
                              maxLines: 1,
                              fontSize: 14,
                              textColor: backgroundColor00,
                              text: '  Play Video',
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * .397,
                      height: screenHeight * .056,
                      decoration: BoxDecoration(
                          color: whiteColor00,
                          borderRadius: BorderRadius.circular(23)),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image.asset('assets/images/chat icon.png'),
                          // Image.asset('assets/images/chat icon.png'),chat
                          Image.asset(
                            'assets/images/chat icon5.png',
                            width: 13,
                          ),
                          CustomText(
                              maxLines: 1,
                              fontSize: 14,
                              textColor: backgroundColor00,
                              text: '   Start chat',
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * .05,
              )
            ]),
          ),
        ));
  }
}
