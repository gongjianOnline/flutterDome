import 'package:flutter/material.dart';
import "package:get/get.dart";
import "./router/router.dart";

void main(){
  runApp(GetMaterialApp(
    initialRoute: "/",
    getPages:MyPage.routes
  ));
}






