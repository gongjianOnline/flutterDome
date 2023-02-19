import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return  Scaffold(
        body:controller.listData[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          currentIndex:controller.currentIndex.value,
          onTap: (val){
            controller.setCurrentIndex(val);
          },
          items:[
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
                label:"首页"
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.category),
              label:"分类"
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.home_repair_service_sharp),
              label:"服务"
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.card_travel_sharp),
              label:"购物车"
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.supervised_user_circle_rounded),
              label:"我的"
            ),
          ]
        ),
      );
    });
  }
}
