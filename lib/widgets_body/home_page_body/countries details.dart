import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:galaxy_car/custom_widgets/custom_text.dart';
import 'package:galaxy_car/router_navigation/router.dart';

class CountiesDetails extends StatelessWidget {
  const CountiesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    var screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: screenHeight * .205, maxWidth: double.infinity),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, int index) =>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kCountries);
                  },
                  child: Container(

                    width: screenWidth * .3,
                    height: screenHeight * .199,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient:const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffFFD800),
                              Color(0xffF65169),
                              Color(0xffBF00C2),
                            ])),

                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * .033,
                        ),
                        Image.asset(
                          'assets/images/Untitled-2.png', /*width: 85*/),

                        CustomText(maxLines: 1,
                            fontSize: 12,
                            textColor:  Color(0xFFFFFFFF),
                            text: 'France',
                            fontWeight: FontWeight.w600),
                        CustomText(maxLines: 1,
                            fontSize: 12,
                            textColor:  Color(0xFFC7ADC1),
                            text: '100 car',
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
