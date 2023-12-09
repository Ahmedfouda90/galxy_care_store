import 'package:cuberto_bottom_bar/internal/cuberto_bottom_bar.dart';
import 'package:cuberto_bottom_bar/internal/cuberto_drawer.dart';
import 'package:cuberto_bottom_bar/internal/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/screens/adding_car/add_car_video.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_continue_button.dart';
import '../../custom_widgets/custom_text.dart';
import '../../router_navigation/router.dart';
import 'add_vehicle_identification.dart';

class AddCarPhotos extends StatefulWidget {
  const AddCarPhotos({Key? key}) : super(key: key);

  @override
  State<AddCarPhotos> createState() => _AddCarPhotosState();
}

class _AddCarPhotosState extends State<AddCarPhotos> {
  bool uploadPic = true;
  int index = 0;
  List<Widget> body = [
    AddCarPhotos(),
    AddCarVideo(),
    AddVehicleIdentification(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool carLoading = true;

    return Scaffold(


        appBar: AppBar(
            leading:const CustomArrowBack(),
            centerTitle: true,
            title: Stack(
              children: [
                CustomContainer(
                    child: Container(),
                    color: greyColor00,
                    height: screenHeight*.011,
                    width:
                    screenWidth*.5,
                    borderRadius: 10,
                    borderWidth: 0,
                    borderColor: greyColor00),
                CustomContainer(
                    child: Container(),
                    color: bottomBarColor00,
                    height: 10,
                    width: screenWidth*.111,
                    borderRadius: 10,
                    borderWidth: 0,
                    borderColor: greyColor00),
              ],
            )
        ),
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
                  maxLines: 2,
                  text: 'Add High-Quality Photos  for your car',
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
                      'Take 4 clear and well-lit photos of the car, including exterior, interior, engine, and any special features. High-quality images attract more buyers.',
                  fontWeight: FontWeight.w500,
                  textColor: Color(0xFF939393),
                  fontSize: 14,
                ),
                SizedBox(
                  height: screenHeight * .047,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      uploadPic = !uploadPic;
                    });
                  },
                  child: CustomText(
                    text: 'Front Side',
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xFFFFFFFF),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .023,
                ),
                uploadPic
                    ? Column(
                        children: [
                          CustomContainer(
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
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
                                      text: 'Select file ',
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              color: blackColor00,
                              height: screenHeight * .094,
                              width: screenWidth * .846,
                              borderRadius: 20,
                              borderWidth: 3,
                              borderColor: bottomBarColor00),
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * .028),
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
                              color: whiteColor00,
                              height: screenHeight * .059,
                              width: screenWidth * .846,
                              borderRadius: 50,
                              borderWidth: 0,
                              borderColor: whiteColor00,
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
                              ))
                        ],
                      )
                    : CustomContainer(
                        color: whiteColor00,
                        height: screenHeight * .059,
                        width: screenWidth * .846,
                        borderRadius: 50,
                        borderWidth: 0,
                        borderColor: whiteColor00,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.photo_outlined,
                                    color: backgroundColor00,
                                  ),
                                ),
                                CustomText(
                                    fontSize: 12,
                                    textColor: backgroundColor00,
                                    text: 'jpg.fs',
                                    fontWeight: FontWeight.w600),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete_outline,
                                  color: bottomBarColor00,
                                ))
                          ],
                        )),
                SizedBox(
                  height: screenHeight * .047,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      uploadPic = !uploadPic;
                    });
                  },
                  child: CustomText(
                    text: 'Left Side',
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xFFFFFFFF),
                    fontSize: 16, maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .023,
                ),


                 uploadPic? Column(
                  children: [
                    CustomContainer(
                        color: blackColor00,
                        height: screenHeight * .094,
                        width: screenWidth * .846,
                        borderRadius: 20,
                        borderWidth: 3,
                        borderColor: bottomBarColor00,
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
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
                                text: 'Select file ',
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
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * .028),
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
                        color: whiteColor00,
                        height: screenHeight * .059,
                        width: screenWidth * .846,
                        borderRadius: 50,
                        borderWidth: 0,
                        borderColor: whiteColor00,
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
                        ))
                  ],
                ): CustomContainer(
                     color: whiteColor00,
                     height: screenHeight * .059,
                     width: screenWidth * .846,
                     borderRadius: 50,
                     borderWidth: 0,
                     borderColor: whiteColor00,
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             IconButton(
                               onPressed: () {},
                               icon: Icon(
                                 Icons.photo_outlined,
                                 color: backgroundColor00,
                               ),
                             ),
                             CustomText(
                                 fontSize: 12,
                                 textColor: backgroundColor00,
                                 text: 'jpg.fs',
                                 fontWeight: FontWeight.w600),
                           ],
                         ),
                         IconButton(
                             onPressed: () {},
                             icon: Icon(
                               Icons.delete_outline,
                               color: bottomBarColor00,
                             ))
                       ],
                     )),
                SizedBox(
                  height: screenHeight * .047,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      uploadPic = !uploadPic;
                    });
                  },
                  child: CustomText(
                    maxLines: 1,
                    text: 'Right Side',
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xFFFFFFFF),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .023,
                ),
             uploadPic?   Column(
                  children: [
                    CustomContainer(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
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
                                text: 'Select file ',
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        color: blackColor00,
                        height: screenHeight * .094,
                        width: screenWidth * .846,
                        borderRadius: 20,
                        borderWidth: 3,
                        borderColor: bottomBarColor00),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * .028),
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
                        borderColor: whiteColor00)
                  ],
                ): CustomContainer(
                 color: whiteColor00,
                 height: screenHeight * .059,
                 width: screenWidth * .846,
                 borderRadius: 50,
                 borderWidth: 0,
                 borderColor: whiteColor00,
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         IconButton(
                           onPressed: () {},
                           icon: Icon(
                             Icons.photo_outlined,
                             color: backgroundColor00,
                           ),
                         ),
                         CustomText(
                             fontSize: 12,
                             textColor: backgroundColor00,
                             text: 'jpg.fs',
                             fontWeight: FontWeight.w600),
                       ],
                     ),
                     IconButton(
                         onPressed: () {},
                         icon: Icon(
                           Icons.delete_outline,
                           color: bottomBarColor00,
                         ))
                   ],
                 )),
                SizedBox(
                  height: screenHeight * .047,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      uploadPic = !uploadPic;
                    });
                  },child: CustomText(
                    text: 'Back Side',
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xFFFFFFFF),
                    fontSize: 16, maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .023,
                ),
                uploadPic? Column(
                  children: [
                    CustomContainer(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
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
                                text: 'Select file ',
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        color: blackColor00,
                        height: screenHeight * .094,
                        width: screenWidth * .846,
                        borderRadius: 20,
                        borderWidth: 3,
                        borderColor: bottomBarColor00),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * .028),
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
                        borderColor: whiteColor00)
                  ],
                ): CustomContainer(
                    color: whiteColor00,
                    height: screenHeight * .059,
                    width: screenWidth * .846,
                    borderRadius: 50,
                    borderWidth: 0,
                    borderColor: whiteColor00,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.photo_outlined,
                                color: backgroundColor00,
                              ),
                            ),
                            CustomText(
                                fontSize: 12,
                                textColor: backgroundColor00,
                                text: 'jpg.fs',
                                fontWeight: FontWeight.w600),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_outline,
                              color: bottomBarColor00,
                            ))
                      ],
                    )),
                SizedBox(
                  height: screenHeight * .071,
                ),
                CustomContinueButton(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kAddCarVideo);
                  },
                ),
                SizedBox(
                  height: screenHeight * .031,
                )
              ],
            ),
          ),
        ));
  }
}
