import 'package:get/get.dart';
import "../middleware/routerMiddleware.dart";
import "../page/home.dart";
import "../page/info.dart";
import "../page/login.dart";


class AppPage {
  static final route = [
    GetPage(name: "/", page: ()=>const Home()),
    GetPage(
      name: "/info", 
      page: ()=>const Info(),
      middlewares:[
        RouterMiddleware()
      ]
    ),
    GetPage(name: "/login", page: ()=>const Login()),
  ];
} 
