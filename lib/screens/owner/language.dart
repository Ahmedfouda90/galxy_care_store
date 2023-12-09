import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../consts/consts.dart';
import '../../custom_widgets/custom_text.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: bottomBarColor00,
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              // GoRouter.of(context).push(AppRouter.kNotification);
            },
            child: CustomText(
                fontSize: 18,
                maxLines: 1,
                textColor: Colors.white,
                text: 'Arabic',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: screenHeight * .029,
          ),
          GestureDetector(
            onTap: () {},
            child: CustomText(
                fontSize: 18,
                maxLines: 1,
                textColor: Colors.white,
                text: 'English',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: screenHeight * .0671,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: bottomBarColor00,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    )),
                child: const Center(
                    child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                )),
              )),
          SizedBox(
            height: screenHeight * .19,
          ),
        ],
      ),
    ));
  }
}
