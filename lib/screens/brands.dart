import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/screens/owner/my_cars.dart';
import 'package:galaxy_car/screens/same_brand.dart';

import '../custom_widgets/custom_arrow_back.dart';
import '../custom_widgets/custom_notification_icon.dart';
import '../custom_widgets/textFormField_Widget.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width /* * .946*/;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height /* * 1.15*/;

    return Scaffold(

      appBar:
      AppBar(

        leading:  CustomArrowBack(),
        title: CustomTextFormField(
                    hintText: 'Search your car',
        ),
        centerTitle: true,
        actions: [
/*
          Stack(
            children: [
              Positioned(
                child: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Positioned(
                  top: 15,
                  left: 25,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Color(0xffF93E2B),
                        borderRadius: BorderRadius.circular(50)),
                  )),
            ],
          ),
*/
          CustomNotificationIcon(),

        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .076),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * .04,
              ),


              CustomText(maxLines: 1,
                  fontSize: 24,
                  textColor: Colors.white,
                  text: 'Brands ',
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: screenHeight * .02,
              ),
              ConstrainedBox(
                constraints:
                BoxConstraints(maxHeight: 900, maxWidth: double.infinity),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 16,
                    itemBuilder: (context, int index) =>
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: screenHeight * .015),
                          width: screenWidth * .846,
                          height: screenHeight * .136,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEEEEE),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(15),
                                width: screenHeight * .1,
                                height: screenWidth * .21,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(15),
                                  // color:Colors.grey,
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffBF00C2),
                                        Color(0xffF65169),
                                        Color(0xffFFD800),
                                      ]),

                                ),
                                child: Image.asset(
                                  'assets/images/f.png',
                                  // width: screenHeight * .097,
                                  // height: screenWidth * .31,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(height: 15,),
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(maxLines: 1,
                                            fontSize: 12,
                                            textColor:  Color(0xFF929292),
                                            text: '2002 ',
                                            fontWeight: FontWeight.w700),

                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_border,
                                              size: 20,
                                              color:  Color(0xFF929292),
                                            ))
                                      ],
                                    ),

                                    CustomText(maxLines: 1,
                                        fontSize: 16,
                                        textColor:  Color(0xFF2F2E41),
                                        text: 'BMW ',
                                        fontWeight: FontWeight.w600),
                                    SizedBox(
                                      height: 5,
                                    ),

                                    Row(
                                      children: [
                                        CustomText(maxLines: 1,
                                            fontSize: 10,
                                            textColor:  Color(0xFF2F2E41),
                                            text: '1000 cars ',
                                            fontWeight: FontWeight.w500),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        CustomText(maxLines: 1,
                                            fontSize: 10,
                                            textColor:  Color(0xFF2F2E41),
                                            text: 'White',
                                            fontWeight: FontWeight.w500),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        CustomText(maxLines: 1,
                                            fontSize: 10,
                                            textColor:  Color(0xFF2F2E41),
                                            text:  '\$ 58,900',
                                            fontWeight: FontWeight.w500),


                                      ],
                                    )
                                  ],
                                ),
                              ),

                              // Text('hbgvc')
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
