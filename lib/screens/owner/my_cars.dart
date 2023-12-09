import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/screens/home_page/failed_search.dart';
import 'package:galaxy_car/screens/same_brand.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_notification_icon.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import '../../router_navigation/router.dart';
import '../adding_car/sell_a_car.dart';

class MyCars extends StatefulWidget {
  const MyCars({Key? key}) : super(key: key);

  @override
  State<MyCars> createState() => _MyCarsState();
}

class _MyCarsState extends State<MyCars> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width /* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height /* * 1.15*/;

    return Scaffold(
      appBar: AppBar(

        leading:  CustomArrowBack(),
        title: CustomTextFormField(
          // sufix: Container(width: 0,),
          hintText: 'Search your car',
          // height: 30,
          // width: 10,
        ),
        centerTitle: true,
        actions: [
          CustomNotificationIcon()        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .077),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * .04,
              ),
              CustomText(
                  maxLines: 1,
                  fontSize: 24,
                  textColor: Color(0xFFFFFFFF),
                  text: 'My cars',
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: screenHeight * .01,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: screenHeight * .8,
                ),
                child: ListView.builder(
                    // shrinkWrap: true,
                    // clipBehavior: Clip.none,

                    scrollDirection: Axis.vertical,
                    itemCount: 18,
                    itemBuilder: (context, int index) => Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.all(10),
                          width: screenWidth * .846,
                          height: screenHeight * .13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEEEEE),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/image 24.png',
                                height: screenHeight * .3,
                              ),
                              SizedBox(
                                width: screenWidth * .02,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: screenHeight * .01),
                                    CustomText(
                                        maxLines: 1,
                                        fontSize: 12,
                                        textColor: Color(0xFF929292),
                                        text: '2002',
                                        fontWeight: FontWeight.w600),
                                    CustomText(
                                        maxLines: 1,
                                        fontSize: 16,
                                        textColor: Color(0xFF2F2E41),
                                        text: 'Ford reckons',
                                        fontWeight: FontWeight.w600),
                                    SizedBox(
                                      height: screenHeight * .01,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/images/امارات.png'),
                                        SizedBox(
                                          width: screenWidth * .02,
                                        ),
                                        CustomText(
                                            maxLines: 1,
                                            fontSize: 8,
                                            textColor: bottomBarColor00,
                                            text: 'EWD 50.000',
                                            fontWeight: FontWeight.w500),
                                        SizedBox(
                                          width: screenWidth * .02,
                                        ),
                                        CustomText(
                                            maxLines: 1,
                                            fontSize: 8,
                                            textColor: backgroundColor00,
                                            text: '100k Mi.',
                                            fontWeight: FontWeight.w500),
                                      ],
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isClicked=!isClicked;
                                  });
                                },
                                child: CustomText(
                                    maxLines: 1,
                                    fontSize: 12,
                                    textColor:isClicked? greyColor00:bottomBarColor00,
                                    text:isClicked? 'Unpublished   ':'Puplished   ',
                                    fontWeight: FontWeight.w600),
                              ) // Text('hbgvc')
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
