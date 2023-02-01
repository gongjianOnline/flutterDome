import 'package:flutter/material.dart';
import "./mock/data.dart";

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:Text("动态列表渲染")),
      body:MyList()
    )
  ));
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  // _initData(){
  //   List<Widget> listData = []; 
  //   data.forEach((element) {
  //     listData.add(
  //       ListTile(title:Text("${element['name']}"))
  //     );
  //   });
  //   return listData;
  // }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: _initData(),
    // );

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context,index){
        return ListTile(title: Text("${data[index]['name']}"));
      },
    );
  }
}

