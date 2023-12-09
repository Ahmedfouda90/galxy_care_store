import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/custom_widgets/custom_circular_container.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_continue_button.dart';
import 'package:galaxy_car/custom_widgets/custom_text_field.dart';
import 'package:galaxy_car/screens/adding_car/add_car_photos.dart';
import 'package:galaxy_car/screens/adding_car/description.dart';

import '../../consts/consts.dart';
import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_text.dart';
import '../../router_navigation/router.dart';

class AddPriceAndLocation extends StatelessWidget {
  const AddPriceAndLocation({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .067),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * .03,
            ),
            CustomText(
              maxLines: 2,
              text: 'Add Price and location',
              fontWeight: FontWeight.w600,
              textColor: Color(0xFFFFFFFF),
              fontSize: 24,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomText(
              maxLines: 6,
              text:
                  'Determine a fair and competitive asking price for your car based on its make, model, year, mileage, and condition. You can research similar listings to get an idea of the market value.',
              fontWeight: FontWeight.w500,
              textColor: Color(0xFF939393),
              fontSize: 14,
            ),
            SizedBox(
              height: screenHeight * .047,
            ),
            CustomText(
              text: 'Price',
              fontWeight: FontWeight.w500,
              textColor: Color(0xFFFFFFFF),
              fontSize: 16,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomContainer(
              color: blackColor00,
              height: screenHeight * .059,
              width: screenWidth * .846,
              borderRadius: 15,
              borderWidth: 3,
              borderColor: bottomBarColor00,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
                child: CustomTextField(
                  suffixIcon: SizedBox(),
                  keyboardType: TextInputType.number,
                  textColor: whiteColor00,
                  hintText: 'Add a price',
                  hinttColor: greyColor00,
                  hintFontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomText(
              text: 'Currency',
              fontWeight: FontWeight.w500,
              textColor: Color(0xFFFFFFFF),
              fontSize: 16,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomContainer(
                color: blackColor00,
                height: screenHeight * .059,
                width: screenWidth * .846,
                borderRadius: 15,
                borderWidth: 3,
                borderColor: bottomBarColor00,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth * .051,right: screenWidth * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          fontSize: 14,
                          textColor: greyColor00,
                          text: 'Select currency',
                          fontWeight: FontWeight.w500),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: greyColor00,
                          ))
                    ],
                  ),
                )),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomText(
              text: 'Location',
              fontWeight: FontWeight.w500,
              textColor: Color(0xFFFFFFFF),
              fontSize: 16,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomContainer(
                color: blackColor00,
                height: screenHeight * .059,
                width: screenWidth * .846,
                borderRadius: 15,
                borderWidth: 3,
                borderColor: bottomBarColor00,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth * .051,right: screenWidth * .01),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          fontSize: 14,
                          textColor: greyColor00,
                          text: 'Add location',
                          fontWeight: FontWeight.w500),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: greyColor00,
                          ))
                    ],
                  ),
                )),
            Spacer(
              flex: 1,
            ),
            /*SizedBox(
              height: screenHeight * .058,
            ),*/
            CustomContinueButton(onTap: () {
              GoRouter.of(context).push(AppRouter.kAddVehicleIdentification);


            }),
            SizedBox(
              height: screenHeight * .031,
            )
          ],
        ),
      ),
    );
  }
}
