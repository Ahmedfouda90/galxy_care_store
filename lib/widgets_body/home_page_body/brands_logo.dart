import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth=MediaQuery.of(context).size.width;
    var screenHeight=MediaQuery.of(context).size.height;

    return             ConstrainedBox(
      constraints:
      BoxConstraints(maxHeight: screenHeight*.082, maxWidth: double.infinity),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, int index) => Padding(
            padding:  EdgeInsets.symmetric(horizontal: screenWidth*.025),
            child: Container(
              width: screenWidth*.135,
              height: screenHeight*.062,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(250),
                  color: Colors.white,
                  shape: BoxShape.circle),
              child: Image.asset(
                'assets/images/f.png',
                width: screenWidth*.02,
              ),
            ),
          )),
    )
    ;
  }
}



