import 'package:flutter/material.dart';
import 'package:flutter_gex/GexController/page2Controller.dart';
import "package:get/get.dart";


class Page1 extends GetView<Page2Controller>{
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("GetView和binding使用")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.add("add is item");
        },
        child:const Icon(Icons.add),
      ),
      body:Column(
        children:[
          Expanded(
            child: Obx(()=>ListView(
              children: controller.listData.map((item){
                return ListTile(title:Text("$item"));
              }).toList()
            )),
          )
        ]
      )
    );
  }

}

