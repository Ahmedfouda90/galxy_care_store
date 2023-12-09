import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_continue_button.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/custom_text_field.dart';
import '../../router_navigation/router.dart';
import '../owner/owner_notification.dart';
import 'add_price_and_location.dart';
import 'congratulations_screen.dart';

class UploadPhotoVehicleTitle extends StatefulWidget {
  const UploadPhotoVehicleTitle({Key? key}) : super(key: key);

  @override
  State<UploadPhotoVehicleTitle> createState() =>
      _UploadPhotoVehicleTitleState();
}

class _UploadPhotoVehicleTitleState extends State<UploadPhotoVehicleTitle> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool carLoading = true;

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
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .067),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * .03,
              ),
              CustomText(
                maxLines: 3,
                text: 'Upload a photo of your Vehicle Title of your car',
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
                    'Ensure you have the car\'s title, which proves ownership and allows for a legal sale. ',
                textColor: Color(0xFF939393),
                fontSize: 14,
              ),
              SizedBox(
                height: screenHeight * .047,
              ),
              CustomContainer(
                  color: blackColor00,
                  height: screenHeight * .22,
                  width: screenWidth * .846,
                  borderRadius: 20,
                  borderWidth: 3,
                  borderColor: bottomBarColor00,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.photo_outlined,
                          color: whiteColor00,
                        ),
                      ),
                      CustomText(
                          fontSize: 14,
                          textColor: greyColor00,
                          text: '  Select file ',
                          fontWeight: FontWeight.w500),
                    ],
                  )),
              SizedBox(
                height: screenHeight * .03,
              ),
              Row(
                children: [
                  Container(
                    height: 1,
                    width: screenWidth * .376,
                    color: Color(0xFF6C6C6C),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * .028),
                    child: CustomText(
                        fontSize: 14,
                        textColor: greyColor00,
                        text: 'Or',
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 1,
                    width: screenWidth * .376,
                    color: Color(0xFF6C6C6C),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .03,
              ),
              CustomContainer(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.photo_camera_outlined,
                          color: backgroundColor00,
                        ),
                      ),
                      CustomText(
                          fontSize: 12,
                          textColor: backgroundColor00,
                          text: 'Open camera & take photo ',
                          fontWeight: FontWeight.w600),
                    ],
                  ),
                  color: whiteColor00,
                  height: screenHeight * .059,
                  width: screenWidth * .846,
                  borderRadius: 50,
                  borderWidth: 0,
                  borderColor: whiteColor00),
              SizedBox(
                height: screenHeight * .065,
              ),

              /*SizedBox(
                height: screenHeight * .017,
              ),*/

              Center(
                child: CustomText(
                  text: 'skip',
                  fontWeight: FontWeight.w500,
                  textColor: whiteColor00,
                  fontSize: 14,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              // SizedBox(
              //   height: screenHeight * .049,
              // ),
              CustomContinueButton(onTap: () {
                //CongratulationScreen

                GoRouter.of(context).push(AppRouter.kCongratulation);

              }),
              SizedBox(
                height: screenHeight * .031,
              )
            ],
          ),
        ));
  }
}
