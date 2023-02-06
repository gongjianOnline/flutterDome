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
      appBar: AppBar(
        title:const Text("轮播组件 pageView"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/pageView1");
              }, 
              child:const Text("轮播组件")
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/pageView2");
              }, 
              child:const Text("动态轮播组件")
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/pageView3");
              }, 
              child:const Text("无线下拉组件")
            )
          ],
        ),
      ),
    );
  }
}
