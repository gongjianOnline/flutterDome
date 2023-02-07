import 'package:flutter/material.dart';
import "../page/home.dart";
import "../components/page1.dart";


Map routes = {
  "/":(context)=>const MyApp(),
  "/page1":(context)=>const Page1()
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




