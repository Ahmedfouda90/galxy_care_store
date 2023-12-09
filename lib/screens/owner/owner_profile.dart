import 'package:flutter/material.dart';
import '../../widgets_body/bottom_bar.dart';
import '../../consts/consts.dart';
import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_container.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/custom_text_field.dart';
import '../../custom_widgets/textFormField_Widget.dart';

class OwnerProfile extends StatelessWidget {
  const OwnerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  CustomArrowBack(),
        title:CustomTextFormField(
          hintText: 'Search a car ',
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                /*   Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Brands()));*/
              },
              icon: Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: screenWidth*.076),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * .047,
            ),
            CustomText(
              fontSize: 24,
              textColor: whiteColor00,
              text: 'Profile',
              fontWeight: FontWeight.w700,
              maxLines: 1,
            ),
            SizedBox(
              height: screenHeight * .047,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/image 36 (1).png",
                      width: 71,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: bottomBarColor00),
                          child: Icon(
                            Icons.mode_edit_outline_sharp,
                            color: whiteColor00,
                            size: 12,
                          ),
                        ))
                  ],
                ),
                SizedBox(width: screenWidth*.076,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        maxLines: 1,
                        fontSize: 20,
                        textColor: whiteColor00,
                        text: 'Ahmad Awod',
                        fontWeight: FontWeight.w700),
                    CustomText(
                        maxLines: 1,
                        fontSize: 14,
                        textColor: whiteColor00,
                        text: 'Owner',
                        fontWeight: FontWeight.w600),

                  ],
                )
              ],
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomText(
              fontSize: 16,
              textColor: whiteColor00,
              text: 'Full name',
              fontWeight: FontWeight.w500,
              maxLines: 1,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomContainer(
              color: blackColor00,
              height: screenHeight * .059,
              width: screenWidth * .846,
              borderRadius: 15,
              borderWidth: 3,
              borderColor: bottomBarColor00,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
                child: CustomTextField(
                  suffixIcon:Icon( Icons.edit,color: greyColor00,),
                  keyboardType: TextInputType.number,
                  textColor: whiteColor00,
                  hintText: 'Ahmed Awod',
                  hinttColor: greyColor00,
                  hintFontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomText(
              fontSize: 16,
              textColor: whiteColor00,
              text: 'Mobile number',
              fontWeight: FontWeight.w500,
              maxLines: 1,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomContainer(
              color: blackColor00,
              height: screenHeight * .059,
              width: screenWidth * .846,
              borderRadius: 15,
              borderWidth: 3,
              borderColor: bottomBarColor00,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
                child: CustomTextField(
                  suffixIcon:Icon( Icons.edit,color: greyColor00,),
                  keyboardType: TextInputType.number,
                  textColor: whiteColor00,
                  hintText: '+201145150953',
                  hinttColor: greyColor00,
                  hintFontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomText(
              fontSize: 16,
              textColor: whiteColor00,
              text: 'Password',
              fontWeight: FontWeight.w500,
              maxLines: 1,
            ),
            SizedBox(
              height: screenHeight * .017,
            ),
            CustomContainer(
              color: blackColor00,
              height: screenHeight * .059,
              width: screenWidth * .846,
              borderRadius: 15,
              borderWidth: 3,
              borderColor: bottomBarColor00,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
                child: CustomTextField(
                  suffixIcon: Icon(Icons.edit,color: greyColor00,),
                  keyboardType: TextInputType.number,
                  textColor: whiteColor00,
                  hintText: '********',
                  hinttColor: greyColor00,
                  hintFontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .2,
            ),

/*
            Spacer(flex: 1,),
*/
            CustomContainer(
                color: bottomBarColor00,
                height: screenHeight * .056,
                width: screenWidth * .846,
                borderRadius: 50,
                borderWidth: 0,
                borderColor: bottomBarColor00,
                child: Center(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: CustomText(
                      textColor: Color(0xFFEEEEEE),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      text: 'Save changes',
                    ),
                  ),
                )),
            SizedBox(
              height: screenHeight * .071,
            )
          ],
        ),
      ),
    );
  }
}
