import 'package:go_router/go_router.dart';
import 'package:galaxy_car/widgets_body/bottom_bar.dart';
import 'package:galaxy_car/screens/login_and_signup/signup_page.dart';

import '../screens/adding_car/add_car_photos.dart';
import '../screens/adding_car/add_car_video.dart';
import '../screens/adding_car/add_price_and_location.dart';
import '../screens/adding_car/add_vehicle_identification.dart';
import '../screens/adding_car/congratulations_screen.dart';
import '../screens/adding_car/description.dart';
import '../screens/adding_car/sell_a_car.dart';
import '../screens/adding_car/specifications.dart';
import '../screens/adding_car/upload_photo_vehicle_title.dart';
import '../screens/brands.dart';
import '../screens/chat/chat_two.dart';
import '../screens/chat/chatOne.dart';
import '../screens/countries/all_countries.dart';
import '../screens/countries/car_details2.dart';
import '../screens/countries/cars_details1.dart';
import '../screens/countries/home_page_countries.dart';
import '../screens/home_page/failed_search.dart';
import '../screens/home_page/home_page.dart';
import '../screens/home_page/search_result.dart';
import '../screens/login_and_signup/login_screen.dart';
import '../screens/login_and_signup/sign_up_two.dart';
import '../screens/login_and_signup/verification_screen.dart';
import '../screens/owner/language.dart';
import '../screens/owner/my_cars.dart';
import '../screens/owner/owner_notification.dart';
import '../screens/owner/owner_profile.dart';
import '../screens/same_brand.dart';
import '../test/slider_test.dart';
import '../test/test.dart';
import '../test/test_screen.dart';

abstract class AppRouter{
  static const kSignUpPage='/SignupPage';
  static const kVerificationPage='/VerificationPage';
  static const kSignUpTwoPage='/SignupTwo';
  static const kHomePage='/HomePage';
  static const kNotification='/OwnerNotifications';
  static const kSellCar='/SellACar';
  static const kCarDetails='/CarDetails';
  static const kSpecifications='/Specifications';
  static const kDescription='/Description';
  static const kAddCarPhotos='/AddCarPhotos';
  static const kAddCarVideo='/AddCarVideo';
  static const kAddPriceAndLocation='/AddPriceAndLocation';
  static const kAddVehicleIdentification='/AddVehicleIdentification';
  static const kUploadPhotoVehicleTitle='/UploadPhotoVehicleTitle';
  static const kCongratulation='/Congratulation';
  static const kMyCars='/MyCars';
  static const kChatOne='/ChatOne';
  static const kBrands='/Brands';
  static const kSameBrand='/SameBrand';
  static const kOwnerProfile='/OwnerProfile';
  static const kSearchResult='/SearchResult';
  static const kFailedSearch='/FailedSearch';
  static const kCountries='/Countries';
  static const kHomePageTwo='/HomePageTwo';
  static const kBottomBar='/BottomBar';
  static const kPopOverTest='/PopOverTest';
  static const kTestScreen='/TestScreen';
  static const kCarDetailsTwo='/CarDetailsTwo';
  static const kCustomPopupMenu='/CustomPopupMenu';
  static const kChatTwo='/ChatTwo';
  static const kLanguage='/Language';


   static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path:kSignUpPage,
        builder: (context, state) => SignupPage(),
      ),
      GoRoute(
        path:kVerificationPage,
        builder: (context, state) => VerificationPage(),
      ),
      GoRoute(
        path:kSignUpTwoPage,
        builder: (context, state) => SignupTwo(),
      ),
      GoRoute(
        path:kHomePage,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path:kNotification,
        builder: (context, state) => OwnerNotifications(),
      ),
      GoRoute(
        path:kSellCar,
        builder: (context, state) =>const SellACar(),
      ),
      GoRoute(
        path:kCarDetails,
        builder: (context, state) => CarDetails(),
      ),
      GoRoute(
        path:kSpecifications,
        builder: (context, state) => Specifications(),
      ),
      GoRoute(
        path:kDescription,
        builder: (context, state) => Description(),
      ),
      GoRoute(
        path:kAddCarPhotos,
        builder: (context, state) => AddCarPhotos(),
      ),
      GoRoute(
        path:kAddCarVideo,
        builder: (context, state) => AddCarVideo(),
      ),
      GoRoute(
        path:kAddPriceAndLocation,
        builder: (context, state) => AddPriceAndLocation(),
      ),
      GoRoute(
        path:kAddVehicleIdentification,
        builder: (context, state) => AddVehicleIdentification(),
      ),
      GoRoute(
        path:kUploadPhotoVehicleTitle,
        builder: (context, state) => UploadPhotoVehicleTitle(),
      ),
      GoRoute(
        path:kCongratulation,
        builder: (context, state) => Congratulation(),

      ),
      GoRoute(
        path:kMyCars,
        builder: (context, state) => MyCars(),

      ),
      GoRoute(
        path:kChatOne,
        builder: (context, state) => ChatOne(),

      ),
      GoRoute(
        path:kBrands,
        builder: (context, state) => Brands(),

      ),
      GoRoute(
        path:kSameBrand,
        builder: (context, state) => SameBrand(),

      ),
      GoRoute(
        path:kOwnerProfile,
        builder: (context, state) => OwnerProfile(),

      ),
      GoRoute(
        path:kSearchResult,
        builder: (context, state) => SearchResult(),

      ),
      GoRoute(
        path:kFailedSearch,
        builder: (context, state) => FailedSearch(),

      ),
      GoRoute(
        path:kCountries,
        builder: (context, state) => Countries(),

      ),
      GoRoute(
        path:kHomePageTwo,
        builder: (context, state) => HomePageTwo(),

      ),
      GoRoute(
        path:kBottomBar,
        builder: (context, state) => BottomBar(),

      ),
      GoRoute(
        path:kPopOverTest,
        builder: (context, state) => PopOverTest(),

      ),
      GoRoute(
        path:kTestScreen,
        builder: (context, state) => TestScreen(),

      ),
      GoRoute(
        path:kCarDetailsTwo,
        builder: (context, state) => CarDetailsTwo(),

      ),
      GoRoute(
        path:kCustomPopupMenu,
        builder: (context, state) => CustomPopupMenu(),

      ),
      GoRoute(
        path:kChatTwo,
        builder: (context, state) => ChatTwo(),

      ),
      GoRoute(
        path:kLanguage,
        builder: (context, state) => Language(),

      ),

    ],
  );


}