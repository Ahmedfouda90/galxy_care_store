import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';

class BottomSheett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(

      height: MediaQuery.of(context).size.height * .502,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .128),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 75,
                    height: 3,
                    color: bottomBarColor00,
                  ),
                  SizedBox(
                    height: screenHeight * .03,
                  ),
                  CustomText(
                      fontSize: 20,
                      textColor: backgroundColor00,
                      text: 'Filter',
                      fontWeight: FontWeight.w600)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    fontSize: 16,
                    textColor: backgroundColor00,
                    text: 'Price',
                    fontWeight: FontWeight.w500),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.toggle_off,
                      color: bottomBarColor00,
                      size: 40,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                    color: backgroundColor00,
                    height: screenHeight * .03,
                    width: screenWidth * .29,
                    borderRadius: 5,
                    borderWidth: 0,
                    borderColor: backgroundColor00,
                    child: Center(
                      child: CustomText(
                        textColor: Color(0xFFEEEEEE),
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        maxLines: 1,
                        text: '\$ 10. 000',
                      ),
                    )),
                Container(
                  width: 14,
                  height: 3,
                  color: backgroundColor00,
                ),
                CustomContainer(
                    color: backgroundColor00,
                    height: screenHeight * .03,
                    width: screenWidth * .29,
                    borderRadius: 5,
                    borderWidth: 0,
                    borderColor: backgroundColor00,
                    child: Center(
                      child: CustomText(
                        textColor: const Color(0xFFEEEEEE),
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        maxLines: 1,
                        text: '\$ 10. 000',
                      ),
                    )),
              ],
            ),
            RangeSlider(
              activeColor: bottomBarColor00,
              max: 100,
              min: 30.0,
              onChanged: (value) {},
              values: RangeValues(40, 90),
            ),
            SizedBox(
              height: screenHeight * .011,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  maxLines: 1,
                    fontSize: 16,
                    textColor: backgroundColor00,
                    text: 'Year',
                    fontWeight: FontWeight.w500),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.toggle_on_rounded,
                      color: Color(0xFF939393),
                      size: 40,
                    ))
              ],
            ),
            SizedBox(
              height: screenHeight * .011,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: greyColor00,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 20, maxWidth: 250),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, int index) => CustomText(
                        fontSize: 10,
                        textColor: greyColor00,
                        text: '2024   ',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                  color: greyColor00,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .011,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    fontSize: 16,
                    textColor: backgroundColor00,
                    text: 'Color',
                    fontWeight: FontWeight.w500),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.toggle_on_rounded,
                      color: Color(0xFF939393),
                      size: 40,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //colors
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.pink),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.indigoAccent),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.yellow),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purple),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
