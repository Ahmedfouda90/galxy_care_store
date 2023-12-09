import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/screens/countries/home_page_countries.dart';
import 'package:galaxy_car/screens/chat/chatOne.dart';

import '../../custom_widgets/custom_appbar_title.dart';
import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_notification_icon.dart';
import '../../custom_widgets/textFormField_Widget.dart';

class Countries extends StatelessWidget {
  const Countries({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width /* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height/* * 1.15*/;

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,

        leading:  CustomArrowBack(),
        title:CustomTextFormField(
          hintText: 'Search your car',
        ),
        actions: [
          CustomNotificationIcon()
        ],
      ),


      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: screenWidth*.076
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: screenHeight*.043,
            ),
            CustomText(
                fontSize: 24,
                textColor: Color(0xFFFFFFFF),
                text: 'Countries',
                fontWeight: FontWeight.w700),
            SizedBox(
              height: screenHeight*.023,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: 24,
                      shrinkWrap: true,
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            GoRouter.of(context).push(AppRouter.kHomePageTwo);
                          },
                          child: Container(
                            // width: screenWidth*.244,
                            // height: screenHeight*.116,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: whiteColor00,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(top: screenHeight*.015),
                                  child: Image.asset(
                                    'assets/images/Frame 41.png',
                                    // width: 100,
                                  ),
                                ),
                                CustomText(
                                    fontSize: 12,
                                    textColor: backgroundColor00,
                                    text: 'England',

                                    fontWeight: FontWeight.w500),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

/*
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 600, maxWidth: 600),
                  child: GridView.builder(
                      itemCount: 24,
                      // shrinkWrap: true,
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.vertical,

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 90,
                        crossAxisCount: 3,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 25,
                        childAspectRatio: 3 / 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(

                          // width: 250,
                          // height: 150,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEEEEE),
                          ),
                          child: Image.asset('assets/images/Frame 41.png',width: 70 ,),
                        );
                      }

                    */
/* ListView.builder(
                    itemExtent: 1,
                      scrollDirection: Axis.vertical,
                      itemCount: 8,
                      itemBuilder: (context, int index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffEEEEEE),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                          'assets/images/image 22.png',
                                          width: 85),
                                    ),
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // SizedBox(height: 15,),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('2020'),
                                            SizedBox(
                                              width: 180,
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.favorite_border,
                                                  size: 25,
                                                ))
                                          ],
                                        ),
                                        Text(
                                          'Ford Reckons',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),

                                        Row(
                                          children: [
                                            Text(
                                              '100 k ml',
                                              style: TextStyle(),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'white',
                                              style: TextStyle(),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              '58,900 \$ ',
                                              style: TextStyle(),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                      height: 10,
                                    ),
                                    // Text('hbgvc')
                                  ],
                                ),
                              ),
                            ),
                          )),*/
            /*

                  ),
                ),
              ),
            )
*/
          ],
        ),
      ),
    );
  }
}
