import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
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
  List listData = [];
  int index = 1;
  @override
  void initState() {
    super.initState();
     _getData();
    // print("1111111");
    // print(res);
  }

  _getData()async{
    var response = await Dio().get("https://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$index");
    var result=json.decode(response.data);
    setState(() {
      listData = result['result'];
      index++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("下拉刷新"),
      ),
      body:RefreshIndicator(
        child: ListView(
          children: listData.map((item){
            return ListTile(title:Text("${item['title']}"));
          }).toList(),
        ), 
        onRefresh:()async{
          print("底部更新");
          _getData();
        }
      )
    );
  }
}



