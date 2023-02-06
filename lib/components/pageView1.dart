import 'package:flutter/material.dart';

class MyPageView1 extends StatefulWidget {
  const MyPageView1({super.key});

  @override
  State<MyPageView1> createState() => _MyPageView1State();
}

class _MyPageView1State extends State<MyPageView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("轮播组件一"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          Text("this is 1"),
          Text("this is 2"),
          Text("this is 3"),
          Text("this is 4"),
          Text("this is 5"),
          Text("this is 6"),
          Text("this is 7"),
        ],
      )
    );
  }
}

