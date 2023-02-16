import 'package:flutter/material.dart';
import 'package:get/get.dart';


import "../page/home.dart";
import "../page/page2.dart";
import "../page/listPage.dart";

class MyPage{
  static final routes = [
    GetPage(name: "/", page: ()=>const Home()),
    GetPage(name: "/page2", page: ()=>const Page2()),
    GetPage(name: "/listPage", page: ()=>const UserPage()),
  ];
}



