import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galaxy_car/consts/consts.dart';
import 'package:galaxy_car/router_navigation/router.dart';
import 'package:galaxy_car/screens/adding_car/specifications.dart';
import 'package:galaxy_car/screens/countries/home_page_countries.dart';
import 'package:galaxy_car/screens/countries/all_countries.dart';
import 'package:galaxy_car/screens/brands.dart';
import 'package:galaxy_car/screens/countries/cars_details1.dart';
import 'package:galaxy_car/screens/chat/chatOne.dart';
import 'package:galaxy_car/screens/home_page/home_page.dart';
import 'package:galaxy_car/screens/login_and_signup/login_screen.dart';
import 'package:galaxy_car/screens/same_brand.dart';
import 'package:galaxy_car/screens/login_and_signup/signup_page.dart';

void main() {
  runApp(GalaxyApp());

  // DevicePreview(builder: (context) => GalaxyApp()));
}

class GalaxyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      // builder: DevicePreview.appBuilder,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: backgroundColor00,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: backgroundColor00,
                statusBarIconBrightness: Brightness.light
              ),

          ),
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: backgroundColor00),
      debugShowCheckedModeBanner: false,
    );
  }
}
