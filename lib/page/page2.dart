import 'package:flutter/material.dart';
import "package:get/get.dart";
import "../store/count.dart";


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  StoreCount  xxx = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("B页面监听")),
      body:Center(
        child:Column(
          children: [
            Obx(()=>Text("${xxx.counter}")),
            ElevatedButton(
              onPressed: (){
                xxx.del();
              }, 
              child: const Text("--")
            )
          ],
        )
      )
    );
    
  }
}
