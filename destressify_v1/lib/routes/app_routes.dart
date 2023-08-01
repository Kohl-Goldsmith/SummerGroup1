import 'package:flutter/material.dart';
import 'package:destressify/presentation/splash_screen/splash_screen.dart';
import 'package:destressify/presentation/signin_screen/signin_screen.dart';
import 'package:destressify/presentation/home_page_screen/home_page_screen.dart';
import 'package:destressify/presentation/self_report_screen/self_report_screen.dart';
import 'package:destressify/presentation/iwatch_screen/iwatch_screen.dart';
import 'package:destressify/presentation/wellness_score_screen/wellness_score_screen.dart';
import 'package:destressify/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signinScreen = '/signin_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String selfReportScreen = '/self_report_screen';

  static const String iwatchScreen = '/iwatch_screen';

  static const String wellnessScoreScreen = '/wellness_score_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
    splashScreen: SplashScreen.builder,
    signinScreen: SigninScreen.builder,
    homePageScreen: HomePageScreen.builder,
    selfReportScreen: SelfReportScreen.builder,
    iwatchScreen: IwatchScreen.builder,
    wellnessScoreScreen: WellnessScoreScreen.builder,
    appNavigationScreen: AppNavigationScreen.builder,
    initialRoute: SplashScreen.builder
  };
}

// import 'package:flutter/material.dart';
// import 'package:destressify/presentation/splash_screen/splash_screen.dart';
// import 'package:destressify/presentation/signin_screen/signin_screen.dart';
// import 'package:destressify/presentation/home_page_screen/home_page_screen.dart';
// import 'package:destressify/presentation/self_report_screen/self_report_screen.dart';
// import 'package:destressify/presentation/iwatch_screen/iwatch_screen.dart';
// import 'package:destressify/presentation/wellness_score_screen/wellness_score_screen.dart';
// import 'package:destressify/presentation/app_navigation_screen/app_navigation_screen.dart';
//
// class AppRoutes {
//   static const String splashScreen = '/splash_screen';
//
//   static const String signinScreen = '/signin_screen';
//
//   static const String homePageScreen = '/home_page_screen';
//
//   static const String selfReportScreen = '/self_report_screen';
//
//   static const String iwatchScreen = '/iwatch_screen';
//
//   static const String wellnessScoreScreen = '/wellness_score_screen';
//
//   static const String appNavigationScreen = '/app_navigation_screen';
//
//   static const String initialRoute = '/initialRoute';
//
//   static Map<String, WidgetBuilder> get routes => {
//     splashScreen: SplashScreen.builder,
//     signinScreen: SigninScreen.builder,
//     homePageScreen: HomePageScreen.builder,
//     selfReportScreen: SelfReportScreen.builder,
//     iwatchScreen: IwatchScreen.builder,
//     wellnessScoreScreen: WellnessScoreScreen.builder,
//     appNavigationScreen: AppNavigationScreen.builder,
//     initialRoute: SplashScreen.builder
//       };
// }
