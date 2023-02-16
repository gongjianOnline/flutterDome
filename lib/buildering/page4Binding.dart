import "package:get/get.dart";
import "../store/page4.dart";


class Page4Building implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>Page4Controller());
  }
}


