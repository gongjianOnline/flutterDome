import 'package:flutter/material.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("自定义AppBar"),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon:const Icon(Icons.menu), 
            onPressed: () {  },
          ),
          actions:[
            IconButton(
              onPressed: (){}, 
              icon:const Icon(Icons.home)
            ),
            IconButton(
              onPressed: (){}, 
              icon:const Icon(Icons.account_circle)
            ),
          ]
        ),
      ),
    );
  }
}


