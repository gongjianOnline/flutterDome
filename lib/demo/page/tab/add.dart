import 'package:flutter/material.dart';

class MyAdd extends StatefulWidget {
  const MyAdd({super.key});

  @override
  State<MyAdd> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyAdd> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("添加"),
    );
  }
}
