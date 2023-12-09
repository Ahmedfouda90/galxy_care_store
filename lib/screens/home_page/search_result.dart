import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/assets_data.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_arrow_back.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';

import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_notification_icon.dart';
import '../../custom_widgets/textFormField_Widget.dart';
import '../../router_navigation/router.dart';
import '../adding_car/sell_a_car.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width /* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height /* * 1.15*/;

    return Scaffold(
      appBar: AppBar(

        leading:const CustomArrowBack(),
        title: CustomTextFormField(
          hintText: 'Search your car',
          keyboardType: TextInputType.emailAddress,
        ),
        centerTitle: true,
        actions: const [
          CustomNotificationIcon()        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .067),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * .05,
            ),
            CustomText(
                maxLines: 1,
                fontSize: 24,
                textColor: Colors.white,
                text: 'search result',
                fontWeight: FontWeight.w700),
            SizedBox(
              height: screenHeight * .025,
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kSearchResult);
              },
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: screenHeight*.56
                          ,minHeight: screenHeight*.5
                    ),
                    child: GridView.builder(

                      itemCount: 12,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 140,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 25,
                        childAspectRatio: 4/3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                child: Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: whiteColor00,
                                  ),

                                  // height: 200,
                                ),
                              ),
                              Positioned(
                                top: -25,
                                left: 13,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/car-png-39071 1.png',
                                      // width: 100,
                                    ),
                                    SizedBox(
                                      height: screenHeight * .009,
                                    ),
                                    CustomText(
                                      fontSize: 12,
                                      text: 'Ford Reckons',
                                      textColor: backgroundColor00,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: screenHeight * .006,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            'assets/images/امارات.png'),
                                        SizedBox(width: screenWidth * .025),


                                        CustomText(maxLines:1,
                                            fontSize: 8,
                                            textColor: Color(0xFFBF00C2),
                                            text:  'AED 50.000',
                                            fontWeight: FontWeight.w500),

                                        SizedBox(width: screenWidth * .025),
                                        CustomText(maxLines: 1,
                                            fontSize: 8,
                                            textColor: backgroundColor00,
                                            text:  '100k Mi.',
                                            fontWeight: FontWeight.w500),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
,

            SizedBox(
              height: screenHeight * .035,
            ),
            Center(
              child:    GestureDetector(
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

            )
            ,
            SizedBox(
              // height: screenHeight * .035,
            ),
          ],
        ),
      ),
    );
  }
}
