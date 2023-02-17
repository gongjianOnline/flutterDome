import 'package:flutter/material.dart';
import "package:get/get.dart";
import "./routes/routes.dart";
import "./GexBinding/allGexbinding.dart";
import "./language/language.dart";
void main(){
  runApp(GetMaterialApp(
    initialBinding: AllControllerBinding(),
    initialRoute: '/',
    defaultTransition: Transition.rightToLeft,
    getPages: AppPage.routers,
    translations:messages(),
    locale:const Locale("zh","CN"),
    fallbackLocale: const Locale("en",'US'),
  ));
}


