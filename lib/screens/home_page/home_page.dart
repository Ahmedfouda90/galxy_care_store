import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/screens/countries/cars_details1.dart';
import 'package:galaxy_car/screens/countries/home_page_countries.dart';

import '../../consts/assets_data.dart';
import '../../custom_widgets/custom_appbar_title.dart';
import '../../custom_widgets/custom_notification_icon.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import '../../router_navigation/router.dart';
import '../../widgets_body/home_page_body/brands_logo.dart';
import '../../widgets_body/home_page_body/countries details.dart';
import '../../widgets_body/home_page_body/listview_of_car_details.dart';
import '../owner/owner_detailss.dart';
import '../adding_car/sell_a_car.dart';
import '../countries/all_countries.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(

        leading: const OwnerDetailss(),
        title: const CustomTextFormField(
          hintText: 'Search your car',
          keyboardType: TextInputType.emailAddress,
        ),
        centerTitle: true,
        actions: const [CustomNotificationIcon()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: screenWidth * .076),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * .096,
              ),

              // the container at the above of screen
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kSellCar);
                },
                child: Padding(
                  padding: EdgeInsets.only(right: screenWidth * .076),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: screenHeight * .118,
                          decoration: BoxDecoration(
                              color: whiteColor00,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              AssetsData.homeBall,
                              width: 150,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * .064),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    fontSize: 16,
                                    textColor: backgroundColor00,
                                    text: 'Sell a car',
                                    fontWeight: FontWeight.w700),
                                SizedBox(
                                  height: 3,
                                ),
                                CustomText(
                                  maxLines: 1,
                                  fontSize: 12,
                                  textColor: backgroundColor00,
                                  fontWeight: FontWeight.w300,
                                  text: 'Discover the road',
                                  // fontWeight: FontWeight.bold
                                ),
                                CustomText(
                                    maxLines: 1,
                                    fontSize: 12,
                                    textColor: backgroundColor00,
                                    text: 'in a whole new way!',
                                    fontWeight: FontWeight.w300)
                              ],
                            ),
                            SizedBox(
                              width: screenWidth * .012,
                            ),
                            Image.asset(AssetsData.homeCar),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: screenHeight * .035,
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * .076),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(width: 1,),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kBottomBar);
                      },
                      child: CustomText(
                          maxLines: 1,
                          fontSize: 24,
                          textColor: Color(0xFFFFFFFF),
                          text: 'Browse',
                          fontWeight: FontWeight.w700),
                    ),
                    CustomText(
                        maxLines: 1,
                        fontSize: 12,
                        textColor: greyColor00,
                        text: 'View all',
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * .047,
              ),
              const CountiesDetails(),
              SizedBox(
                height: screenHeight * .047,
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * .076),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        fontSize: 24,
                        textColor: Color(0xFFFFFFFF),
                        text: 'Brands',
                        fontWeight: FontWeight.w700),
                    CustomText(
                        maxLines: 1,
                        fontSize: 12,
                        textColor: greyColor00,
                        text: 'View all',
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * .023,
              ),
              const BrandLogo(),
              SizedBox(
                height: screenHeight * .047,
              ),
              // row of texts
              Padding(
                padding: EdgeInsets.only(right: screenWidth * .076),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      fontSize: 16,
                      textColor: Color(0xFFFFFFFF),
                      text: 'recently added',
                      fontWeight: FontWeight.w600,
                      maxLines: 1,
                    ),
                    CustomText(
                        maxLines: 1,
                        fontSize: 12,
                        textColor: Color(0xFFFFFFFF),
                        text: 'best scale',
                        fontWeight: FontWeight.w300),
                    CustomText(
                        maxLines: 1,
                        fontSize: 12,
                        textColor: Color(0xFFFFFFFF),
                        text: 'saved',
                        fontWeight: FontWeight.w300),
                    CustomText(
                        maxLines: 1,
                        fontSize: 12,
                        textColor: Color(0xFFFFFFFF),
                        text: 'view all',
                        fontWeight: FontWeight.w300),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * .023,
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * .076),
                child: GestureDetector(
                  child: const ListViewOfCarDetails(),
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kCarDetails);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
