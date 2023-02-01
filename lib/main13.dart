import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("Card组件")),
      body:MyApp()
    )
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child:Column(
            children:const [
              ListTile(
                title: Text("张三"),
                subtitle: Text("xxxxx"),
              ),
              Divider(),
              ListTile(
                title: Text("电话：111111111"),
              ),
              ListTile(
                title: Text("地址：111111111"),
              ),
            ],
          )
        )
      ],
    );
  }
}

