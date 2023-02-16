import 'package:flutter/material.dart';
import "package:get/get.dart";
import "./observerData.dart";
import "./classData.dart";

void main(){
  runApp(MaterialApp(
    home:MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RxInt num = 0.obs;
  RxString stringName  = "ali".obs;
  var myData = new MyData();
  var classData = new Animal("mao","1").obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Gex响应式管理"),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: (){
          num++;
          stringName.value="张三";
          myData.myName.value = "lisi";
          myData.listData.add("66666");
          classData.value = Animal("敦敦","3");
          print(myData.listData);
        },
      ),
      body: Center(
        child:ListView(
          children: [
            Obx(()=>Text("$num")),
            Obx(() =>Text("$stringName")),
            Obx(() =>Text("${myData.myName}")),
            Obx((){
              return Column(
                children: myData.listData.map((item){
                  return ListTile(title:Text("$item"));
                }).toList(),
              );
            }),
            Obx(()=>Text(classData.value.name))
          ],
        )
      ),
    );
  }
}


