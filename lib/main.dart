import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List resData = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Dio().get("https://jdmall.itying.com/api/pcate").then((response){
      setState(() {
        resData = response.data["result"];
      });
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("请求接口")
      ),
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:resData.map((item){
            return ListTile(title:Text("${item['title']}"));
          }).toList()
        ),
      )
    );
  }
}

