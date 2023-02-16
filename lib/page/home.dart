import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:shared_preferences/shared_preferences.dart';
import "./login.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Gex路由管理")
      ),
      body:Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: (){
                Get.toNamed(
                  "/info",
                  arguments:{"userName":"张三"}
                );
              }, 
              child: const Text("跳转页面")
            ),
            ElevatedButton(
              onPressed: (){
                Get.off(Login()); 
              }, 
              child: const Text("跳转登录")
            ),
            ElevatedButton(
              onPressed: ()async{
                final prefs = await SharedPreferences.getInstance();
                prefs.setString("info", "张三");
              }, 
              child: const Text("存储参数")
            ),
            ElevatedButton(
              onPressed: ()async{
                final prefs = await SharedPreferences.getInstance();
                prefs.remove("info");
              }, 
              child: const Text("清楚缓存")
            )
          ],
        ),
      )
    );
  }
}

