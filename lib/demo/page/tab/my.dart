import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我的"),
    );
  }
}
