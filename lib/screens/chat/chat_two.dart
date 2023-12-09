import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';

import '../../custom_widgets/custom_arrow_back.dart';

class ChatTwo extends StatelessWidget {
  const ChatTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(

        leading: CustomArrowBack(),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                maxLines: 1,
                fontSize: 24,
                textColor: whiteColor11,
                text: 'Mercedes',
                fontWeight: FontWeight.w700),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    maxLines: 1,
                    fontSize: 10,
                    textColor: greyColor00,
                    text: 'Mileage 80K   ',
                    fontWeight: FontWeight.w600),
                Image.asset('assets/images/امارات.png')
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomContainer(
              color: whiteColor11,
              height: screenHeight * .1,
              width: screenWidth,
              borderRadius: 0,
              child: Center(
                child: CustomContainer(
                  borderRadius: 50,
                  width: screenWidth * .846,
                  height: screenHeight * .064,
                  color: backgroundColor00,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: whiteColor11)),
                      hintStyle: TextStyle(
                          color: greyColor00,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                      enabledBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        //assets/images/microphone icon.png
                        icon: Row(
                          children: [
                            Image.asset(
                              'assets/images/microphone icon.png',
                              width: 22,
                            ),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                      hintText: 'write a message',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 12, bottom: 12, right: 20),
                        child: Image.asset(
                          'assets/images/attach icon.png',
                        ),
                      ),

/*
                        Icon(
                          Icons.attach_file_rounded,
                          color: greyColor00,

                        ),
*/
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
