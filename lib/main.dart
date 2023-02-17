import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import "./generated/locales.g.dart";

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translations,
      locale:const Locale('zh', 'CN'), // 将会按照此处指定的语言翻译
      fallbackLocale:const Locale('en', 'US'),
    ),
  );
}
