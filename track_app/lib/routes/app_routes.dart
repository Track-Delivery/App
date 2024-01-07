// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:track_app/presentation/onboarding_screen_one_screen/binding/onboarding_screen_one_binding.dart';
import 'package:track_app/presentation/onboarding_screen_one_screen/onboarding_screen_one_screen.dart';
import 'package:track_app/presentation/onboarding_screen_three_screen/binding/onboarding_screen_three_binding.dart';
import 'package:track_app/presentation/onboarding_screen_three_screen/onboarding_screen_three_screen.dart';
import 'package:track_app/presentation/onboarding_screen_two_screen/binding/onboarding_screen_two_binding.dart';
import 'package:track_app/presentation/onboarding_screen_two_screen/onboarding_screen_two_screen.dart';
import 'package:track_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:track_app/presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String onboardScreen_1 = '/onboardScreenOne';
  static const String onboardScreen_2 = '/onboardScreenTwo';
  static const String onboardScreen_3 = '/onboardScreenOne';
  static const String loginScreen = '/loginScreen';
  static const String signUpScreen = '/signUpScreen';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: onboardScreen_1,
      page: () => OnboardingScreenOneScreen(),
      bindings: [OnboardingScreenOneBinding()],
    ),
    GetPage(
      name: onboardScreen_2,
      page: () => OnboardingScreenTwoScreen(),
      bindings: [OnboardingScreenTwoBinding()],
    ),
    GetPage(
      name: onboardScreen_3,
      page: () => OnboardingScreenThreeScreen(),
      bindings: [OnboardingScreenThreeBinding()],
    ),
  ];
}
