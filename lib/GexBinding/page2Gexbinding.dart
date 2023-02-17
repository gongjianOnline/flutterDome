import "package:get/get.dart";
import "../GexController/page2Controller.dart";

class Page2GexBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page2Controller());
  }

}
