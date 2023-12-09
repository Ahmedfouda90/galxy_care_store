import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/assets_data.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/screens/adding_car/sell_a_car.dart';
import 'package:galaxy_car/screens/home_page/search_result.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_notification_icon.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import '../../router_navigation/router.dart';

class FailedSearch extends StatelessWidget {
  const FailedSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width /* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height /* * 1.15*/;

    return Scaffold(
      appBar: AppBar(
        leading: CustomArrowBack(),
        title: CustomTextFormField(
          hintText: 'Search your car',

        ),
        centerTitle: true,
        actions: [
          CustomNotificationIcon()        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .120),
        child: ListView(
          children: [
            SizedBox(
              height: screenHeight * .06,
            ),
            CustomText(
                maxLines: 1,
                fontSize: 18,
                textColor: Colors.white,
                text: 'Range Rover 2023',
                fontWeight: FontWeight.w600),
            SizedBox(
              height: screenHeight * .1,
            ),
            Image.asset(AssetsData.failedSearchImage),
            SizedBox(
              height: screenHeight * .035,
            ),
            CustomText(
                maxLines: 1,
                fontSize: 35,
                textColor: Colors.white,
                text: 'Page Not Found',
                fontWeight: FontWeight.w600),
            SizedBox(
              height: screenHeight * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomText(
                  maxLines: 2,
                  fontSize: 16,
                  textColor: Color(0xFF929292),
                  text: 'Sorry, the car you\'re looking for \n               can\'t be found',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),

            GestureDetector(
              onTap: (){
                GoRouter.of(context).push(AppRouter.kSellCar);
              },
              child: CustomContainer(
                  color:const Color(0xFFEEEEEE),
                  height: screenHeight*.056,
                  width: screenWidth*.846,
                  borderRadius: 50,
                  borderWidth: 0,
                  borderColor: Colors.white,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AssetsData.requestCarIcon,width: 15,),


                      CustomText(textColor: backgroundColor00,
                        maxLines: 1,
                        fontWeight: FontWeight.w600,
                        text: '   Request a car',
                        fontSize: 12,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
