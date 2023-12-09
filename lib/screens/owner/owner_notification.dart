import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/assets_data.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_text_field.dart';
import 'package:galaxy_car/screens/owner/owner_profile.dart';

import '../../custom_widgets/custom_appbar_title.dart';
import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_line.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/textFormField_Widget.dart';

class OwnerNotifications extends StatefulWidget {
  OwnerNotifications({Key? key}) : super(key: key);

  @override
  State<OwnerNotifications> createState() => _OwnerNotificationsState();
}

class _OwnerNotificationsState extends State<OwnerNotifications> {
  bool isNew = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const CustomArrowBack(),
        title: CustomTextFormField(
          hintText: 'Search a car ',
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
                size: 25,
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * .051,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * .055),
            child: CustomText(
              fontSize: 24,
              textColor: whiteColor00,
              text: 'Notifications',
              fontWeight: FontWeight.w700,
              maxLines: 1,
            ),
          ),
          SizedBox(
            height: screenHeight * .023,
          ),
          ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 600,
              ),
              child: ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            isNew = !isNew;
                          });
                        },
                        child: CustomContainer(
                            color: isNew
                                ? const Color(0x1ABF00C2)
                                : backgroundColor00,
                            height: screenHeight * .122,
                            width: double.infinity,
                            borderRadius: 0,
                            borderWidth: 0,
                            borderColor: backgroundColor00,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * .077),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AssetsData.notificationIcon,
                                    width: 50,
                                    height: 50,
                                    color: isNew ? bottomBarColor00 : null,
                                  ),
                                  SizedBox(
                                    width: screenWidth * .051,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          maxLines: 1,
                                          fontSize: 12,
                                          textColor: isNew
                                              ? bottomBarColor00
                                              : Colors.white,
                                          text: 'New Mercedes in China ',
                                          fontWeight: FontWeight.w600),
                                      SizedBox(
                                        height: screenHeight * .006,
                                      ),
                                      SizedBox(
                                        width: screenWidth * .6,
                                        child: CustomText(
                                            maxLines: 3,
                                            fontSize: 10,
                                            textColor: isNew
                                                ? whiteColor00
                                                : greyColor00,
                                            text:
                                                'Good news, we found what you\'re looking for New Mercedes in China',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: screenHeight * .006,
                                      ),
                                      CustomText(
                                          maxLines: 1,
                                          fontSize: 10,
                                          textColor: isNew
                                              ? whiteColor00
                                              : greyColor00,
                                          text: '4:00 PM',
                                          fontWeight: FontWeight.w500),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ),
                  separatorBuilder: (context,index)=>   const CustomLine(),
                  itemCount: 10)

              /*  ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) =>
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                                isNew=!isNew;
                            });
                          },
                          child: CustomContainer(
                              color:isNew? const Color(0x1ABF00C2): backgroundColor00,
                              height: screenHeight * .122,
                              width: double.infinity,
                              borderRadius: 0,
                              borderWidth: 0,
                              borderColor: backgroundColor00,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * .077),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      AssetsData.notificationIcon,
                                      width: 50,
                                      height: 50,
                                      color: isNew? bottomBarColor00:null,
                                    ),
                                    SizedBox(
                                      width: screenWidth * .051,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [

                                        CustomText(
                                          maxLines: 1,
                                            fontSize: 12,
                                            textColor:isNew? bottomBarColor00:Colors.white,
                                            text: 'New Mercedes in China ',
                                            fontWeight: FontWeight.w600),
                                        SizedBox(
                                          height: screenHeight * .006,
                                        ),
                                        SizedBox(

                                          width: screenWidth * .6,
                                          child: CustomText(
                                              maxLines: 3,
                                              fontSize: 10,
                                              textColor:isNew? whiteColor00:greyColor00,
                                              text:
                                              'Good news, we found what you\'re looking for New Mercedes in China',
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: screenHeight * .006,
                                        ),
                                        CustomText(
                                            maxLines: 1,
                                            fontSize: 10,
                                            textColor:isNew? whiteColor00:greyColor00,
                                            text: '4:00 PM',
                                            fontWeight: FontWeight.w500),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ),
                        const CustomLine(),
                      ],
                    )),*/
              ),
        ],
      ),
    );
  }
}
