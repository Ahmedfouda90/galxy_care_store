import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/screens/brands.dart';

import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/textFormField_Widget.dart';

class ChatOne extends StatelessWidget {
  const ChatOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * .946;
    double screenHeight = MediaQuery.of(context).size.height * 1.15;

    return Scaffold(

      appBar: AppBar(

        leading:  CustomArrowBack(),
        title: CustomTextFormField(
          hintText: 'Search chat car',
          borderColor: Colors.white,

        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),


      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: bottomBarColor00, shape: BoxShape.circle),
        child: Icon(Icons.edit,color: whiteColor00,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * .04,
            ),
            Padding(
              padding:  EdgeInsets.only(left: screenWidth * .077),
              child: CustomText(
                  maxLines: 1,
                  fontSize: 24,
                  textColor: Colors.white,
                  text: 'Chats',
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: screenHeight * .01,
            ),
            ConstrainedBox(
              constraints:
              BoxConstraints(maxHeight: 1000, maxWidth: double.infinity),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                // clipBehavior: Clip.none,
                itemCount: 14,
                itemExtent: 110,
                itemBuilder: (context, int index) => Container(
                  width: double.infinity,
                  height: screenHeight * .14,
                  /*  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: backGrounColor00,
                  ),*/
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: screenWidth*.077),
                        child: GestureDetector(
                          onTap: (){
                            GoRouter.of(context).push(AppRouter.kChatTwo);
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(left: screenWidth * .077),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.only(right: screenWidth * .04),
                                  child: Container(
                                    width: screenWidth * .15,
                                    height: screenHeight * .087,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/pngwing.png',
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CustomText(
                                                fontSize: 16,
                                                textColor: greyColor00,
                                                fontWeight: FontWeight.w600,
                                                maxLines: 1,
                                                text: "Mileage 80K   ",
                                              ),
                                              Image.asset(
                                                  'assets/images/امارات.png'),
                                            ],
                                          ),
                                          CustomText(
                                            fontSize: 14,
                                            textColor: Colors.grey,
                                            text: '4:00 PM',
                                          )
                                        ],
                                      ),
                                      CustomText(
                                          maxLines: 1,
                                          fontSize: 12,
                                          textColor: whiteColor00,
                                          text: 'Mercedes Benz 2010 Black',
                                          fontWeight: FontWeight.w600),
                                      CustomText(
                                          maxLines: 1,
                                          fontSize: 12,
                                          textColor: greyColor00,
                                          text: 'wow , that\'s awesome ! ',
                                          fontWeight: FontWeight.w500),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .017 ,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: .6,
                        color: Color(0xFF6C6C6C),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
