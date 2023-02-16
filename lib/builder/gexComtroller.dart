import 'package:flutter/material.dart';
import "package:get/get.dart";

import "../store/count.dart";
import "../store/list.dart";

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => StoreCount());
    Get.lazyPut(() => ListController());
  }

}

