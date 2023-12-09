import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router_navigation/router.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Positioned(
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kNotification);


              },
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              )),
        ),
        Positioned(
            top: 15,
            left: 25,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color:const Color(0xffF93E2B),
                  borderRadius: BorderRadius.circular(50)),
            )),
      ],
    );
  }
}
