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
  ScrollController _xxx = ScrollController();
  List listData = [];
  int index = 1;
  bool flag = true;
  @override
  void initState() {
    super.initState();
    _xxx.addListener((){
      _scrollFun();
    });
     _getData();
  }

  _scrollFun(){
    if(_xxx.position.pixels > _xxx.position.maxScrollExtent-30){
      _getData();
    }
  }

  _getData()async{
    if(flag){
      flag = false;
      var response = await Dio().get("https://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$index");
      var result=json.decode(response.data);
      setState(() {
        listData.addAll(result['result']);
        index++;
        flag = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("下拉刷新"),
      ),
      body:ListView(
        controller: _xxx,
        children: listData.map((item){
          return ListTile(title:Text("${item['title']}"));
        }).toList(),
      ), 
    );
  }
}



