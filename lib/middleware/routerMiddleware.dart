// 路由中间件
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:shared_preferences/shared_preferences.dart';


class RouterMiddleware extends GetMiddleware{
  // 判断权限
  @override
  RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    // // return super.redirect(route);
    SharedPreferences.getInstance().then((xxx){
      var info = xxx.getString("info");
      print("info:$info");
      if (info == null) {
        Get.offAllNamed('/login');
        // const RouteSettings(name: '/login');
      }
    });
    return null;
  }
}

