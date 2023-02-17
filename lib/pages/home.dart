import 'package:flutter/material.dart';
import 'package:flutter_gex/GexController/homeController.dart';
import "package:get/get.dart";


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController xxx = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Gex状态管理测试")
      ),
      body: Center(
        child: Column(
          children: [
            Text("hello".tr),
            Obx(()=>Text("${xxx.count}")),
            ElevatedButton(
              onPressed: (){
                print("1111");
                xxx.add();
              }, 
              child: const Text("add")
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed("/page1");
              }, 
              child: const Text("跳转到Page1页面")
            )
          ],
        ),
      ),
    );
  }
}

