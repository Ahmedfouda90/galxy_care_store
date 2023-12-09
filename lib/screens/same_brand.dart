import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/screens/countries/cars_details1.dart';

import '../custom_widgets/custom_text.dart';
import '../widgets_body/home_page_two_body/bottom_sheet.dart';

class SameBrand extends StatelessWidget {
  const SameBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 40,
                ),
              ),

              Text('search',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,color: Colors.grey
              ),),
              Stack(
                children: [
                  Positioned(
                    child: IconButton(
                      onPressed: () {

                      },
                      icon: Icon(
                        Icons.notifications_none,
                        size: 40,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 22,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),


          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Find',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,color: Colors.grey
                ),),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Ford reckons',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,color: Colors.grey
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Image.asset('assets/images/Group 33969.png'),
              )
            ],
          ),

          SizedBox(
            height: 50,
          ),

          Expanded(
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (builder) {
                      return BottomSheett();
                    });
              },
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: 12,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        childAspectRatio: 3 / 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                child: Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffEEEEEE),
                                  ),
                                  height: 250,
                                ),
                              ),
                              Positioned(
                                top: -20,
                                left: 10,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/car-png-39071 1.png',
                                      width: 100,
                                    ),

                                    CustomText(
                                      fontSize: 20,
                                      text: 'Ford Reckons',
                                      fontWeight: FontWeight.w700,
                                    ),

                                    Row(
                                      children: [
                                        Text(
                                          '100 kml',
                                          style: TextStyle(),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'white',
                                          style: TextStyle(),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '58,900 \$ ',
                                          style: TextStyle(),
                                        ),
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

    );
  }
}
