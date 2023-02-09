import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

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
  Future<List> _getList() async{
    var response = await Dio().get("https://jdmall.itying.com/api/pcate");
    return response.data['result'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("使用FutureBuild方式请求数据")
      ),
      body: FutureBuilder(
            future:_getList(),
            builder:(context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                var list = snapshot.data as List;
                return Column(
                  children: list.map((item){
                    return ListTile(title:Text("${item['title']}"));
                  }).toList()
                );
              }else{
                return const CircularProgressIndicator();
              }
              
            }
          ),
    );
  }
}


