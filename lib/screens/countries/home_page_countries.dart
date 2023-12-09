import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/widgets_body/home_page_body/brands_logo.dart';
import 'package:galaxy_car/widgets_body/home_page_two_body/bottom_sheet.dart';
import 'package:galaxy_car/screens/countries/all_countries.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_notification_icon.dart';
import 'cars_details1.dart';

class HomePageTwo extends StatelessWidget {
  const HomePageTwo({super.key});

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
      appBar: AppBar(

        leading:  CustomArrowBack(),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.public,color: Color(0xffEEEEEE),),
            CustomText(
                fontSize: 20,
                textColor: Color(0xffEEEEEE),
                text: '   UAE',
                fontWeight: FontWeight.w700)
          ],
        ),

        centerTitle: true,
        actions: const [
          CustomNotificationIcon()        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .071),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * .055,
            ),

            // textField for search
            Container(
              // width: 320,
              height: screenHeight * .056,
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: bottomBarColor00,
                  ),
                  // suffixIconColor: Colors.red,

                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.tune_sharp,
                      color: bottomBarColor00,
                      size: 30,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(50)
                              )
                          ),
                          isScrollControlled: true,
                          context: context,
                          builder: (builder) {
                            return BottomSheett();
                          });

                    },
                  ),

                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: 'Search your Car',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                      ,
                      color: hintColor00

                  ),
                  // contentPadding: EdgeInsets.only(bottom: 50),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2,
                        strokeAlign: 5,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            // just text
            CustomText(
                fontSize: 18,
                textColor: Color(0xFFFFFFFF),
                text: 'Brands',
                fontWeight: FontWeight.w500),
            SizedBox(
              height: screenHeight * .023,
            ),
            BrandLogo(),
            SizedBox(
              height: screenHeight * .047,
            ),
            //just text
            /*  GridViewOfCarDetails( ),*/
            Expanded(
              child: GestureDetector(
                onTap: () {
             GoRouter.of(context).push(AppRouter.kCarDetails);
                },
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(

                        itemCount: 24,
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
              ),
            )
          ],
        ),
      ),

    );
  }
}
