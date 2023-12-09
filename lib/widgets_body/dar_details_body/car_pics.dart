import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_container.dart';

class CarImages extends StatelessWidget {
  const CarImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      // width: MediaQuery.of(context).size.width,
      height: screenHeight * .33,
      child: Stack(
        children: [
          /* Container(
            width: 100,
            height: 90,
          ),*/
          Positioned(
            top: -35,
            right: 0,
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/Group 33971.png',
                // fit: BoxFit.contain, // Adjust this to your needs
              ),
            ),
          ),
          Positioned(
              top: 32,
              // left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [

                      CustomContainer(
                          child: Image.asset(
                            'assets/images/pngwing.png',
                          ),
                          color: backgroundColor00,
                          width: screenWidth * .145,
                          height: screenHeight * .05,
                          borderRadius: 12,
                          borderWidth: 1,
                          borderColor: Color(0xFF6C6C6C)),
                      SizedBox(
                        height: screenHeight * .017,
                      ),
                      CustomContainer(
                          child: Image.asset(
                            'assets/images/pngwing.png',
                          ),
                          color: backgroundColor00,
                          width: screenWidth * .145,
                          height: screenHeight * .05,
                          borderRadius: 12,
                          borderWidth: 1,
                          borderColor: Color(0xFF6C6C6C)),
                      SizedBox(
                        height: screenHeight * .017,
                      ),
                      CustomContainer(
                          child: Image.asset(
                            'assets/images/pngwing.png',
                          ),
                          color: backgroundColor00,
                          width: screenWidth * .145,
                          height: screenHeight * .05,
                          borderRadius: 12,
                          borderWidth: 1,
                          borderColor: Color(0xFF6C6C6C)),
                      SizedBox(
                        height: screenHeight * .017,
                      ),
                      CustomContainer(
                          child: Image.asset(
                            'assets/images/pngwing.png',
                          ),
                          color: backgroundColor00,
                          width: screenWidth * .145,
                          height: screenHeight * .05,
                          borderRadius: 12,
                          borderWidth: 1,
                          borderColor: Color(0xFF6C6C6C)),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * .1,
                  ),
                  Image.asset('assets/images/pngwing 1.png'),
                ],
              ))
        ],
      ),
    );
  }
}
