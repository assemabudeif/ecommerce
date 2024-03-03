import 'package:ecommerce/core/constant/app_routes.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/localization/change_local.dart';
import 'package:ecommerce/core/localization/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/services/services.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: controller.language,
      fallbackLocale: const Locale('en'),
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        scaffoldBackgroundColor: AppColor.backgroundColor,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
          ),
          bodyLarge: TextStyle(
            height: 2,
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.initialRoute,
      routes: routes,
    );
  }
}
