import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:bruno/bruno.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final HomeCount = 0.obs;
  
  RxList listData = [
    "111111",
    "11111"
  ].obs;

  BrnSearchTextController searchController = BrnSearchTextController();
  TextEditingController textController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setListData(){
    listData.add("222656421345");
    update();
  }
}
