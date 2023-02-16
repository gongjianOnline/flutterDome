import "package:get/get.dart";
import "../store/page3.dart";

class Page3ControllerBuilding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => StorePage3());
  }

}
