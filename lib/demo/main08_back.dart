import 'package:flutter/material.dart';
import "ALIcon07.dart";

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("list组件练习")),
      body:MyRowList()
    )
  ));
}

// 水平列表
class MyRowList extends StatelessWidget {
  const MyRowList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child:ListView(
        scrollDirection:Axis.horizontal,
        children: [
          Container(
            width: 180,
            decoration:const BoxDecoration(
              color:Colors.red
            ),
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 150,
                  padding:EdgeInsets.all(10),
                  child: Image.network(
                    "https://s1.ax1x.com/2023/02/01/pSBVSB9.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text("文本标题")
              ],
            ),
          ),
          Container(
            width: 180,
            decoration:const BoxDecoration(
              color:Colors.amber
            ),
          ),
          Container(
            width: 180,
            decoration:const BoxDecoration(
              color:Colors.blueAccent
            ),
          ),
          Container(
            width: 180,
            decoration:const BoxDecoration(
              color:Colors.deepPurple
            ),
          )
        ],
      )
    );
  }
}


// 垂直列表
class MyList extends StatelessWidget {
  const MyList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:const [
        ListTile(
          leading: Icon(AlIcon.mi),
          title: Text("列表"),
          trailing: Icon(Icons.navigate_next),
        ),
        Divider(),
      ],
    );
  }
}


