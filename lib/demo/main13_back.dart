import 'package:flutter/material.dart';
import "./mock/maoyan.dart";
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar:AppBar(title:const Text("card组件")),
      body:MyApp()
    )
  ));
}


// 获取数据
List<Widget> getData(){
  var data;
  data = maoyanData.map((item){
    return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            elevation: 20,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio:10/5,
                  child: Image.network(
                    "${item['img']}",
                    fit:BoxFit.cover
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage("${item['img']}"),
                  ),
                  title:Text("${item['nm']}"),
                  subtitle: Text("${item['cat']}"),
                )
              ],
            ),
          );
  });
  return data.toList();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getData(),
    );
  }
}
