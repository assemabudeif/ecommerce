import 'package:ecommerce/core/constant/app_routes.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/language_enum.dart';
import 'package:ecommerce/core/localization/change_local.dart';
import 'package:ecommerce/view/widgets/language/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LocalController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.chooseLanguage.tr,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              CustomButtonLang(
                textbutton: "Ar",
                onPressed: () {
                  controller.changeLanguage(LanguagesEnum.ar.name);
                  Get.toNamed(AppRoutes.onBoadingRoute);
                },
              ),
              CustomButtonLang(
                textbutton: "En",
                onPressed: () {
                  controller.changeLanguage(LanguagesEnum.en.name);
                  Get.toNamed(AppRoutes.onBoadingRoute);
                },
              ),
            ],
          )),
    );
  }
}
