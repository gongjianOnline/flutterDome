import 'package:flutter/material.dart';

class MyPageView2 extends StatefulWidget {
  const MyPageView2({super.key});

  @override
  State<MyPageView2> createState() => _MyPageView2State();
}

class _MyPageView2State extends State<MyPageView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("动态生成轮播组件"),
      ),
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index){
          return Text("this is ${index}");
        },
        itemCount: 10,
      )
    );
  }
}

