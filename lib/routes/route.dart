import 'package:flutter/material.dart';
import "../page/home.dart";
import "../components/pageView1.dart";
import "../components/pageView2.dart";
import "../components/pageView3.dart";

Map routes = {
  "/":(context)=>const MyApp(),
  "/pageView1":(context)=>const MyPageView1(),
  "/pageView2":(context)=>const MyPageView2(),
  "/pageView3":(context)=>const MyPageView3(),
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
    builder: (context) =>
      pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};




