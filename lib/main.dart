import 'package:flutter/material.dart';
import 'package:flutter_dome/page/home.dart';


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
  Future<String> _getData() async{
    await Future.delayed(const Duration(seconds:5));
    return "11111";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FutureBuilder仿ajax获取数据"),
      ),
      body:Center(
        child: FutureBuilder(
          future: _getData(),
          builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              return Text("${snapshot.data}");
            }else{
              return CircularProgressIndicator();
            }
          }
        )
      )
    );
  }
}
