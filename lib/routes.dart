import 'package:ecommerce/core/constant/app_routes.dart';
import 'package:ecommerce/view/screens/auth/login_screen.dart';
import 'package:ecommerce/view/screens/language_screen.dart';
import 'package:ecommerce/view/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.initialRoute: (context) => const LanguageScreen(),
  AppRoutes.onBoadingRoute: (context) => const OnBoardingScreen(),
  AppRoutes.loginRoute: (context) => const LoginScreen(),
};
