import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import "../../../controllers/global_controller_controller.dart";

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  GlobalControllerController GlobalController = Get.put(GlobalControllerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(()=>Text("${GlobalController.globalCount}")),
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed("/my-page");
              }, 
              child: const  Text("跳转到myPage页面")
            ),
            ElevatedButton(
              onPressed: (){
                GlobalController.increment();
              }, 
              child: const Text("点击global++")
            ),
            Text("buttons_login".tr)
          ],
        )
      ),
    );
  }
}
