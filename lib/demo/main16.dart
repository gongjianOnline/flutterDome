import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: MyPage(),
  ));
}


class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final List _listData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("状态组件")),
      body: ListView(
        children: _listData.map((value){
          return ListTile(title: Text("$value"));
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _listData.add("列表");
          });
        },
        child: const Icon(Icons.library_add_outlined,color: Colors.white,),

      ),
    );
  }
}

