import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: const Text("Wrap组件")),
    body: MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        MyButton("第一季", handelPressed: () {}),
        MyButton("第一季", handelPressed: () {}),
        MyButton("第一季", handelPressed: () {}),
        MyButton("第一季(完结)", handelPressed: () {}),
        MyButton("第一季(优酷)", handelPressed: () {}),
        MyButton("第一季(爱奇艺)", handelPressed: () {}),
        MyButton("第一季", handelPressed: () {}),
        MyButton("第一季", handelPressed: () {}),
        MyButton("第一季", handelPressed: () {}),
        MyButton("第一季", handelPressed: () {}),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  String value;
  void Function()? handelPressed;

  MyButton(this.value, {super.key, required this.handelPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: handelPressed, child: Text(value));
  }
}
