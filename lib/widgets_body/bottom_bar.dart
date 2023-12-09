import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/assets_data.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/screens/adding_car/add_car_photos.dart';
import 'package:galaxy_car/screens/adding_car/add_car_video.dart';
import 'package:galaxy_car/screens/adding_car/add_vehicle_identification.dart';
import 'package:galaxy_car/screens/adding_car/sell_a_car.dart';
import 'package:galaxy_car/screens/chat/chatOne.dart';
import 'package:galaxy_car/screens/countries/car_details2.dart';
import 'package:galaxy_car/screens/countries/home_page_countries.dart';
import 'package:galaxy_car/screens/home_page/failed_search.dart';
import 'package:galaxy_car/screens/home_page/home_page.dart';
import 'package:galaxy_car/screens/home_page/search_result.dart';
import 'package:galaxy_car/screens/login_and_signup/login_screen.dart';
import 'package:galaxy_car/screens/owner/my_cars.dart';

import '../custom_widgets/custom_text.dart';
import '../screens/countries/cars_details1.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  List<Widget> body = [
    CarDetailsTwo(),
    FailedSearch(),
    SearchResult(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: body[currentIndex],
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: backgroundColor00),
            color: backgroundColor00,
          ),
          height: screenHeight * .1,
          child: ClipRRect(
            // clipBehavior: Clip.antiAlias,

            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: bottomBarColor00,
              showUnselectedLabels: false,
              currentIndex: currentIndex,
              onTap: (newIndex) {
                setState(() {
                  currentIndex = newIndex;
                });
              },
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    activeIcon: Container(
                        height: screenHeight * .035,
                        width: screenWidth * .256,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home_outlined,
                              size: 30,
                              color: bottomBarColor00,
                            ),
                            CustomText(
                              maxLines: 1,
                              fontSize: 12,
                              text: '  Home',
                              fontWeight: FontWeight.w600,
                              textColor: bottomBarColor00,
                            )
                          ],
                        )),
                    icon: const Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                  activeIcon: Container(
                      height: screenHeight * .045,
                      width: screenWidth * .256,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetsData.bottomBarCar1,
                            width: 20,
                          ),
                          CustomText(
                            maxLines: 1,
                            fontSize: 12,
                            text: '  Cars',
                            fontWeight: FontWeight.w600,
                            textColor: bottomBarColor00,
                          )
                        ],
                      )),
                  icon: Image.asset(
                    AssetsData.bottomBarCar2,
                    width: 20,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Container(
                      height: screenHeight * .045,
                      width: screenWidth * .256,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetsData.bottomBarChat1,
                            width: 20,
                          ),
                          CustomText(
                            maxLines: 1,
                            fontSize: 12,
                            text: '  Chat',
                            fontWeight: FontWeight.w600,
                            textColor: bottomBarColor00,
                          )
                        ],
                      )),
                  icon: Image.asset(
                    AssetsData.bottomBarChat2,
                    width: 20,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ));
  }
}
