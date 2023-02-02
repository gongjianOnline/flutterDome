import 'package:flutter/material.dart';
import 'package:flutter_dome/main01.dart';

void main(){
  runApp( MaterialApp(
    home:Scaffold(
      appBar:AppBar(title:const Text("hello flutter")),
      body:Column(
        children: [
          MyApp()
        ],
      )
    )
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      alignment: Alignment.center,
      margin:const EdgeInsets.fromLTRB(10, 20, 0, 0),
      decoration: BoxDecoration(
        color:Colors.cyan[600],
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color:Colors.green,
          width: 1
        )
      ),
      child:const Text(
        "提交",
        style: TextStyle(
          color:Color.fromRGBO(255, 255, 255, 1),
          fontSize: 18
        ),
      )
    );
  }

}