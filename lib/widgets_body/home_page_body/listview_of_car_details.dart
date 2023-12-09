import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';

class ListViewOfCarDetails extends StatelessWidget {
  const ListViewOfCarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 650,/* maxWidth: 500*/),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 8,
          itemBuilder: (context, int index) =>
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * .023),
                child: Container(
                  width: screenWidth * .846,
                  height: screenHeight * .136,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffEEEEEE),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenWidth * .035),
                        child: Image.asset(
                          'assets/images/image 22.png',
                          // width: 85
                        ),
                      ),

                      Expanded(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SizedBox(height: 15,),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(maxLines: 1,
                                    fontSize: 12,
                                    textColor: greyColor00,
                                    text: '2020',
                                    fontWeight: FontWeight.w300),
                                SizedBox(
                                  width: 18,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      size: 20,
                                    ))
                              ],
                            ),
                            // SizedBox(height: 1,),
                            CustomText(maxLines: 1,
                                fontSize: 16,
                                textColor:Color(0xFF2F2E41),
                                text: 'Ford reckons',
                                fontWeight: FontWeight.w600),
                            SizedBox(
                              height: 5,
                            ),
                            Row(

                              children: [
                                Image.asset(
                                    'assets/images/امارات.png'),
                                SizedBox(
                                    width: screenWidth*.02
                                ),
                                Text(
                                  'AED 50.000',
                                  style: TextStyle(
                                      color: Color(0xffBF00C2),
                                      fontSize: 12
                                  ),
                                ),
                                SizedBox(
                                    width: screenWidth*.02
                                ),
                                Text(
                                  '100k Mi.',
                                  style: TextStyle(
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
/*
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
*/
                          ],
                        ),
                      ),

/*
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text('2020'),
                          SizedBox(
                            height: 5,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(width: 40,),
                          Icon(
                            Icons.favorite_border,
                            size: 25,
                          ),
                        ],
                      ),*/
                      // Text('hbgvc')
                    ],
                  ),
                ),
              )),
    );
  }
}
