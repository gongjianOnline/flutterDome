import 'package:get/get.dart';
import "../GexController/homeController.dart";

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }

}

