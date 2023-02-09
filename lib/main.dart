import 'package:flutter/material.dart';
import "dart:convert";
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
  Map map = {"name":"张三","age":18};
  
  @override
  Widget build(BuildContext context) {
    var  xxx = json.encode(map);
    var aaa = json.decode(xxx);
    print(aaa);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Map to Json"),
      ),
      body:Text("text")
    );
  }
}

