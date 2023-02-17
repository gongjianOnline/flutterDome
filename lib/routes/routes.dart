import 'package:flutter/material.dart';
import "package:get/get.dart";

import "../pages/home.dart";
import "../pages/page1.dart";
import "../pages/page2.dart";

import "../GexBinding/page2Gexbinding.dart";

class AppPage {
  static final routers = [
    GetPage(
      name: "/",
      page: ()=>const Home()
    ),
    GetPage(
      name: "/page1",
      binding: Page2GexBinding(), 
      page: ()=>const Page1()
    ),
    GetPage(
      name: "/page2",
      page: ()=>const Page2()
    ),


  ];
}

