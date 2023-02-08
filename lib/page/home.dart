import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("文本表单")
      ),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/page1");
              }, 
              child: const Text("文本表单")
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/page2");
              }, 
              child: const Text("单选按钮")
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/page3");
              }, 
              child: const Text("多选按钮")
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/page4");
              }, 
              child: const Text("开关组件")
            )
          ],
        ),
      )
    );
  }
}

