import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/screens/owner/my_cars.dart';

import '../../consts/consts.dart';
import '../../custom_widgets/custom_text.dart';
import 'language.dart';

class OwnerDetailss extends StatelessWidget {
  const OwnerDetailss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return IconButton(
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: backgroundColor00,
            context: context,
            builder: (context) =>
                SizedBox(
                  height: 800,
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * .106,
                      ),
                      GestureDetector(
                        child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              'assets/images/image 36 (1).png',
                              width: screenWidth*.18,
                            )),
                        onTap: () {
                        },
                      ),
                      SizedBox(
                        height: screenHeight * .017,
                      ),
                      CustomText(
                          maxLines: 1,
                          fontSize: 20,
                          textColor: whiteColor00,
                          text: 'Ahmad Awod',
                          fontWeight: FontWeight.w700),
                      SizedBox(
                        height: screenHeight * .014,
                      ),
                      CustomText(
                          maxLines: 1,
                          fontSize: 14,
                          textColor: whiteColor00,
                          text: 'Owner',
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: screenHeight * .071,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kOwnerProfile);
                        },
                        child: CustomText(
                            fontSize: 18,
                            maxLines: 1,
                            textColor: whiteColor00,
                            text: 'Profile',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: screenHeight * .029,
                      ),
                      GestureDetector(
                        onTap: () {
                          // GoRouter.of(context).push(AppRouter.kMyCars);
                        },
                        child: CustomText(
                            maxLines: 1,
                            fontSize: 18,
                            textColor: whiteColor00,
                            text: 'Orders',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * .029,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kMyCars);
                        },
                        child: CustomText(
                            maxLines: 1,
                            fontSize: 18,
                            textColor: whiteColor00,
                            text: 'My cars',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * .029,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kLanguage);
                        },
                        child: CustomText(
                            maxLines: 1,
                            fontSize: 18,
                            textColor: whiteColor00,
                            text: 'Language',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * .029,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kNotification);
                        },
                        child: CustomText(
                            fontSize: 18,
                            maxLines: 1,
                            textColor: whiteColor00,
                            text: 'Notifications',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * .029,
                      ),
                      CustomText(
                          fontSize: 18,
                          maxLines: 1,
                          textColor: whiteColor00,
                          text: 'Logout',
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: screenHeight * .071,
                      ),
                      IconButton(
                          onPressed: () {
                            GoRouter.of(context).pop();
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            size: 40,
                            color: whiteColor00,
                          ))
                    ],
                  ),
                ));
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
