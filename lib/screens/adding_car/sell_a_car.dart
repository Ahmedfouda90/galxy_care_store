import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/screens/adding_car/specifications.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_continue_button.dart';
import '../../custom_widgets/custom_text.dart';

class SellACar extends StatefulWidget {
  const SellACar({Key? key}) : super(key: key);

  @override
  State<SellACar> createState() => _SellACarState();
}

class _SellACarState extends State<SellACar> {
  bool isClicked1 = false;
  bool isClicked2    = false;
  void selected1() {
    setState(() {
      isClicked1 = true;
      isClicked2 = false;
    });
  }

  void selected2() {
    setState(() {
      isClicked1 = false;
      isClicked2 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(

          leading:  CustomArrowBack(),
          centerTitle: true,
          title: Stack(
            children: [
              CustomContainer(
                  child: Container(),
                  color: greyColor00,
                  height: screenHeight * .011,
                  width: screenWidth * .5,
                  borderRadius: 10,
                  borderWidth: 0,
                  borderColor: greyColor00),
              CustomContainer(
                  child: Container(),
                  color: bottomBarColor00,
                  height: 10,
                  width: screenWidth * .111,
                  borderRadius: 10,
                  borderWidth: 0,
                  borderColor: greyColor00),
            ],
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .076),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * .03,
            ),
            CustomText(
              maxLines: 1,
              text: 'Sell a car ',
              fontWeight: FontWeight.w700,
              textColor: Color(0xFFFFFFFF),
              fontSize: 42,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomText(
              maxLines: 7,
              text:
                  'To list your car successfully on our app and improve your chances of selling it, follow these straightforward steps to provide detailed information, attractive photos, and responsive communication with potential buyers. ',
              fontWeight: FontWeight.w500,
              textColor: Color(0xFF939393),
              fontSize: 14,
            ),
            SizedBox(
              height: screenHeight * .047,
            ),
            CustomText(
              text: 'Listing as',
              fontWeight: FontWeight.w500,
              textColor: Color(0xFFFFFFFF),
              fontSize: 16,
            ),

            SizedBox(
              height: screenHeight * .017,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    selected1();
                  },
                  child: CustomContainer(
                      color: blackColor00,
                      height: screenHeight * .152,
                      width: screenWidth * .384,
                      borderRadius: 20,
                      borderWidth: 2,
                      borderColor: isClicked1 ? bottomBarColor00 : greyColor00,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:  Icon(
                             isClicked1? Icons.circle : Icons.circle_outlined,
                              color:isClicked1? bottomBarColor00:greyColor00,
                              size: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                  fontSize: 16,
                                  textColor: isClicked1?whiteColor00:greyColor00 ,
                                  text:'Agent',
                                  fontWeight: FontWeight.w500),
                            ],
                          )
                        ],
                      )),
                ),
                SizedBox(
                  width: screenWidth * .076,
                ),
                GestureDetector(
                  onTap: () {
                    selected2();
                  },
                  child: CustomContainer(
                      color: blackColor00,
                      height: screenHeight * .152,
                      width: screenWidth * .384,
                      borderRadius: 20,
                      borderWidth: 2,
                      borderColor: isClicked2 ? bottomBarColor00 : greyColor00,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:  Icon(
                              isClicked2? Icons.circle : Icons.circle_outlined,
                              color:isClicked2? bottomBarColor00:greyColor00,
                              size: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                  fontSize: 16,
                                  textColor: isClicked2?whiteColor00:greyColor00 ,
                                  text:'Owner',
                                  fontWeight: FontWeight.w500),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            CustomContinueButton(onTap: () {
              GoRouter.of(context).push(AppRouter.kSpecifications);
            }),
            SizedBox(
              height: screenHeight * .028,
            )
          ],
        ),
      ),
    );
  }
}
