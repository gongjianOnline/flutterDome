import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_page_controller.dart';

class MyPageView extends GetView<MyPageController> {
  const MyPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(()=>Text("${controller.count}")),
            ElevatedButton(
              onPressed: (){
                controller.increment();
              }, 
              child: const Text("点击++")
            )
          ],
        )
      ),
    );
  }
}
