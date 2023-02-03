import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("命名路由跳转")
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/my");
            }, 
            child:const Text("不携带参数")
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/user",arguments: {"111":"111"});
            }, 
            child:const Text("携带参数")
          )
        ],
      )
    );
  }
}

