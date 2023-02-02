import 'package:flutter/material.dart';

class MyUser extends StatefulWidget {
  const MyUser({super.key});

  @override
  State<MyUser> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyUser> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我的"),
    );
  }
}
