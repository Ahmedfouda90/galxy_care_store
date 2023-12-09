import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/custom_widgets/custom_circular_container.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';
import 'package:galaxy_car/custom_widgets/custom_drop_down_button.dart';
import 'package:galaxy_car/screens/adding_car/add_car_photos.dart';

import '../../consts/consts.dart';
import '../../custom_widgets/custom_arrow_back.dart';
import '../../custom_widgets/custom_continue_button.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/custom_text_field.dart';
import '../../router_navigation/router.dart';

class Specifications extends StatefulWidget {
  const Specifications({super.key});

  @override
  State<Specifications> createState() => _SpecificationsState();
}

class _SpecificationsState extends State<Specifications> {
  String selectedValue = '   select an option';
  bool isDropdownOpen = false;
  bool isUsed = false;
  bool isNew = false;

  void used() {
    setState(() {
      isUsed = true;
      isNew = false;
    });
  }

  void neww() {
    setState(() {
      isUsed = false;
      isNew = true;
    });
  }

  final List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  void selectOption(String option) {
    setState(() {
      selectedValue = option;
      isDropdownOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(

          leading:  CustomArrowBack(),
          centerTitle: true,
          title: Stack(
            children: [
              CustomContainer(
                  child: Container(),
                  color: greyColor00,
                  height: screenHeight * .011,
                  width: screenWidth * .5,
                  borderRadius: 10,
                  borderWidth: 0,
                  borderColor: greyColor00),
              CustomContainer(
                  child: Container(),
                  color: bottomBarColor00,
                  height: 10,
                  width: screenWidth * .111,
                  borderRadius: 10,
                  borderWidth: 0,
                  borderColor: greyColor00),
            ],
          )),
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
                maxLines: 1,
                text: 'Specifications',
                fontWeight: FontWeight.w600,
                textColor: Color(0xFFFFFFFF),
                fontSize: 24,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                maxLines: 4,
                text:
                    'Prepare a detailed description of the car, including make, model, year, mileage, color, and other straightforward details .',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFF939393),
                fontSize: 14,
              ),
              SizedBox(
                height: screenHeight * .047,
              ),
              CustomText(
                text: 'Brands',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * .051),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            maxLines: 1,
                            fontSize: 14,
                            textColor: greyColor00,
                            text: 'Select a brand',
                            fontWeight: FontWeight.w500),
                        IconButton(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: greyColor00,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  )),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Model',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * .051),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            fontSize: 14,
                            textColor: greyColor00,
                            text: 'Select model',
                            fontWeight: FontWeight.w500),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: greyColor00,
                            ))
                      ],
                    ),
                  )),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Year',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),

              CustomDropDownList(
                  selectedValue: 'select year',
                  options: ['2020', '2021', '2022', '2023', '2024']),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                maxLines: 1,
                text: 'Color',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration:const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.pink),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.indigoAccent),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.yellow),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purple),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purple),
                    ),
                    SizedBox(
                      width: screenWidth * .05,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Mileage',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
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
                    suffixIcon: SizedBox(),
                    keyboardType: TextInputType.number,
                    textColor: whiteColor00,
                    hintText: 'Add a mileage',
                    hinttColor: greyColor00,
                    hintFontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Fuel Type',
                fontWeight: FontWeight.w500,
                textColor: const Color(0xFFFFFFFF),
                fontSize: 16,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * .051),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            fontSize: 14,
                            textColor: greyColor00,
                            text: 'Select a type',
                            fontWeight: FontWeight.w500),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: greyColor00,
                            ))
                      ],
                    ),
                  )),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Transmission',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * .051),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            fontSize: 14,
                            textColor: greyColor00,
                            text: 'Select a type',
                            fontWeight: FontWeight.w500),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: greyColor00,
                            ))
                      ],
                    ),
                  )),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                text: 'Engine',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          fontSize: 14,
                          textColor: greyColor00,
                          text: '1.3 _ Liter',
                          fontWeight: FontWeight.w500),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: greyColor00,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              CustomText(
                maxLines: 1,
                text: 'Condation',
                fontWeight: FontWeight.w500,
                textColor: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              SizedBox(
                height: screenHeight * .017,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        neww();
                      },
                      icon: Icon(
                        isNew ? Icons.circle:Icons.circle_outlined,
                        color:isNew? bottomBarColor00: greyColor00,
                      )),
                  CustomText(
                      maxLines: 1,
                      fontSize: 16,
                      textColor: Colors.white,
                      text: 'used',
                      fontWeight: FontWeight.w500)
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        used();
                      },
                      icon: Icon(
        isUsed ? Icons.circle:Icons.circle_outlined,
          color:isUsed? bottomBarColor00: greyColor00,
        )),
                  CustomText(
                      maxLines: 1,
                      fontSize: 16,
                      textColor: Colors.white,
                      text: 'new',
                      fontWeight: FontWeight.w500)
                ],
              ),
              SizedBox(
                height: screenHeight * .071,
              ),
              CustomContinueButton(onTap: () {
                GoRouter.of(context).push(AppRouter.kDescription);
              }),
              SizedBox(
                height: screenHeight * .058,
              )
            ],
          ),
        ),
      ),
    );
  }
}
