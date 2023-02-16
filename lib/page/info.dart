import 'package:flutter/material.dart';
import "package:get/get.dart";
import "./login.dart";

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("接受到Home的路由传参");
    print(Get.arguments);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("用户信息")
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: (){
                Get.off(Login());
              }, 
              child: const Text("登录")
            )
          ],
        ),
      ),
    );
  }
}

