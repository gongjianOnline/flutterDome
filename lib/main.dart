import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:MyApp()
  ));
}

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
        title: const Text("下拉刷新"),
      ),
      body:RefreshIndicator(
        child: ListView(
          children: [],
        ), 
        onRefresh:()async{
          print("底部更新");
        }
      )
    );
  }
}



