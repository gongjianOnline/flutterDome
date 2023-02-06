// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import "../page/home.dart";
import "../page/my.dart";
import "../page/user.dart";
//1、配置路由
Map routes = {
  "/": (contxt) => const MyHome(),
  "/my": (contxt) => const MyPage(),
  "/user": (contxt,{arguments}) => MyUser(arguments: arguments,),
};

//2、配置onGenerateRoute  固定写法  这个方法也相当于一个中间件，这里可以做权限判断
var onGenerateRoute = (RouteSettings settings) { 
  final String? name = settings.name; //  /news 或者 /search
  final Function? pageContentBuilder = routes[name];                          //  Function = (contxt) { return const NewsPage()}
  // 主要是判断路由传参是否携带arguments参数
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));

      return route;
    }
  }
};