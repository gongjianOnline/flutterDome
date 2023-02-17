import 'package:flutter/material.dart';
import "package:get/get.dart";
import "./routes/routes.dart";
import "./GexBinding/allGexbinding.dart";
void main(){
  runApp(GetMaterialApp(
    initialBinding: AllControllerBinding(),
    initialRoute: '/',
    defaultTransition: Transition.rightToLeft,
    getPages: AppPage.routers,
  ));
}


