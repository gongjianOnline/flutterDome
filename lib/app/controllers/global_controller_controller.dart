import 'package:get/get.dart';

class GlobalControllerController extends GetxController {
  //TODO: Implement GlobalControllerController

  final globalCount = 0.obs;
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

  void increment() => globalCount.value++;
}
