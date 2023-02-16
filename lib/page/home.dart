import 'package:flutter/material.dart';
import "package:get/get.dart";
import "../store/count.dart";
import "../store/list.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  StoreCount  myCount = Get.find();
  ListController  myList = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("数据共享")
      ),
      body:Center(
        child:Column(
          children: [
            Obx(() => Text("${myCount.counter}")),
            ElevatedButton(
              onPressed: (){
                myCount.add();
              }, 
              child: const Text("add")
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed("/page2");
              }, 
              child: const Text("跳转到B")
            ),
            ElevatedButton(
              onPressed: (){
                myList.add("1111");
              }, 
              child: const Text("添加addList")
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed("/listPage");
              }, 
              child: const Text("跳转到lIst页面")
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed("/page3");
              }, 
              child: const Text("跳转Page3页面")
            )
          ],
        )
      )
    );
  }
}
