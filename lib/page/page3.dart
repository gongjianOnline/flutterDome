import 'package:flutter/material.dart';
import "package:get/get.dart";
import "../store/page3.dart";

class Page3 extends GetView<StorePage3>{
  const Page3({super.key});
  
  @override
  Widget build(BuildContext context) {
    Get.put(StorePage3());
    return Scaffold(
      appBar: AppBar(
        title:const Text("GexView")
      ),
      body:Center(
        child: Column(
          children: [
            Text("data"),
            Obx(()=>Text("${controller.counter}"))
          ],
        ),
      )
    );
  }

}