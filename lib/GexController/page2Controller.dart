import "package:get/get.dart";

class Page2Controller extends GetxController{
  RxList listData = ["111"].obs;

  add(value){
    listData.add(value);
    update();
  }
}


