import 'package:get/get.dart';

import "../../home/views/home_view.dart";
import "../../category/views/category_view.dart";
import "../../service/views/service_view.dart";
import "../../cart/views/cart_view.dart";
import "../../user/views/user_view.dart";

class TabsController extends GetxController {
  //TODO: Implement TabsController
  // tabber下标
  RxInt currentIndex = 0.obs;
  // 切换的页面表驱动编程
  List listData = [
    HomeView(),
    CategoryView(),
    ServiceView(),
    CartView(),
    UserView()
  ];

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

  // 修改tabber下标
  setCurrentIndex(value){
    currentIndex.value = value;
    update();
  }


}
