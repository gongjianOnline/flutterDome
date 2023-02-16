import 'package:flutter/material.dart';
import "./builder/gexComtroller.dart";
import "package:get/get.dart";
import "./router/router.dart";

void main(){
  runApp(GetMaterialApp(
    initialBinding: AllControllerBinding(),
    initialRoute: "/",
    getPages:MyPage.routes
  ));
}






