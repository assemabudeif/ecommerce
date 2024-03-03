import 'package:ecommerce/core/constant/language_enum.dart';
import 'package:ecommerce/core/constant/shared_key.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  late Locale language;

  AppServices appServices = Get.find();

  changeLanguage(String langCode) {
    language = Locale(langCode);
    appServices.sharedPreferences.setString(SharedKey.language.name, langCode);
    Get.updateLocale(language);
  }

  _initialLanguage() async {
    final String appLang = appServices.sharedPreferences.getString(
          SharedKey.language.name,
        ) ??
        '';

    if (appLang == LanguagesEnum.ar.name) {
      language = Locale(LanguagesEnum.ar.name);
    } else if (appLang == LanguagesEnum.en.name) {
      language = Locale(LanguagesEnum.en.name);
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }

  @override
  void onInit() {
    _initialLanguage();
    super.onInit();
  }
}
