import "package:flutter/material.dart";
import "package:get/get.dart";
import "../store/page4.dart";

class Page4 extends GetView<Page4Controller>{
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title:const Text("GetXController生命周期")
      ),
      body: Center(
        child: Obx((){
          return Text("${controller.list[0]}");
        })
      ),
    );
    
  }

}





