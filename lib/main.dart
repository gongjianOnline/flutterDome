import 'package:flutter/material.dart';
import "./components/NavComponent.dart";

void main(){
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:NavComponent()
    );
  }
}

