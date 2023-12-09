import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/custom_widgets/custom_circular_container.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_text_field.dart';
import 'package:galaxy_car/screens/adding_car/add_car_photos.dart';

import '../../consts/consts.dart';
import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_continue_button.dart';
import '../../custom_widgets/custom_text.dart';
import '../../router_navigation/router.dart';
import 'add_vehicle_identification.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(

        leading:  const CustomArrowBack(),
          centerTitle: true,
          title: Stack(
            children: [
              CustomContainer(
                  color: greyColor00,
                  height: screenHeight*.011,
                  width:
                  screenWidth*.5,
                  borderRadius: 10,
                  borderWidth: 0,
                  borderColor: greyColor00,
                  child: Container()),
              CustomContainer(
                  color: bottomBarColor00,
                  height: 10,
                  width: screenWidth*.111,
                  borderRadius: 10,
                  borderWidth: 0,
                  borderColor: greyColor00,
                  child: Container()),
            ],
          )      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .067),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * .03,
              ),
              CustomText(
                text: 'Description ',
                fontWeight: FontWeight.w600,
                textColor: Color(0xFFFFFFFF),
                fontSize: 24,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                maxLines: 5,
                text:
                    'Prepare a detailed description of the car, including unique features, condition, features and selling conditions or modifications.',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFF939393),
                fontSize: 14,
              ),
              SizedBox(
                height: screenHeight * .047,
              ),
              CustomText(
                text: 'Condition',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomContainer(
                color: blackColor00,
                height: screenHeight * .132,
                width: screenWidth * .846,
                borderRadius: 20,
                borderWidth: 3,
                borderColor: bottomBarColor00,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
                  child: CustomTextField(
                    suffixIcon: SizedBox(),
                    keyboardType: TextInputType.number,
                    textColor: whiteColor00,
                    hintText: 'Add description',
                    hinttColor: greyColor00,
                    hintFontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Features',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomContainer(
                color: blackColor00,
                height: screenHeight * .132,
                width: screenWidth * .846,
                borderRadius: 20,
                borderWidth: 3,
                borderColor: bottomBarColor00,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
                  child: CustomTextField(
                    suffixIcon: SizedBox(),
                    keyboardType: TextInputType.number,
                    textColor: whiteColor00,
                    hintText: 'Add description',
                    hinttColor: greyColor00,
                    hintFontSize: 14,
                  ),
                  /*TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Colors.white
                      ),

                      decoration: InputDecoration(
                        hintText: 'Add a price', border: InputBorder.none
                      ),
                    ),*/
                ),
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Selling conditions',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomContainer(
                color: blackColor00,
                height: screenHeight * .132,
                width: screenWidth * .846,
                borderRadius: 20,
                borderWidth: 3,
                borderColor: bottomBarColor00,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
                  child: CustomTextField(
                    suffixIcon: SizedBox(),
                    keyboardType: TextInputType.number,
                    textColor: whiteColor00,
                    hintText: 'Add description',
                    hinttColor: greyColor00,
                    hintFontSize: 14,
                  ),
                  /*TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Colors.white
                      ),

                      decoration: InputDecoration(
                        hintText: 'Add a price', border: InputBorder.none
                      ),
                    ),*/
                ),
              ),
              SizedBox(
                height: screenHeight * .047,
              ),
              Center(
                child: CustomText(
                  text: 'skip',
                  fontWeight: FontWeight.w500,
                  textColor: whiteColor00,
                  fontSize: 14, maxLines: 1,
                ),
              ),
              SizedBox(
                height: screenHeight * .031,
              ),

              CustomContinueButton(onTap: (){
                GoRouter.of(context).push(AppRouter.kAddCarPhotos);
              }),
              SizedBox(
                height: screenHeight * .031,
              )
            ],
          ),
        ),
      ),
    );
  }
}
