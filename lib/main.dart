import 'package:flutter/material.dart';
import "ALIcon07.dart";


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch:Colors.red),
    home:Scaffold(
      appBar: AppBar(title:const Text("list组件")),
      body:const RowList()
    )
  ));
}


// 水平列表
class RowList extends StatelessWidget {
  const RowList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 180,
            decoration:const BoxDecoration(
              color:Colors.red
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
              color:Colors.brown
            ),
          ),
          Container(
            width: 180,
            decoration:const BoxDecoration(
              color:Colors.limeAccent
            ),
          ),
          Container(
            width: 180,
            decoration:const BoxDecoration(
              color:Colors.orangeAccent
            ),
          ),
          
        ],
      ),
    );
  }
}

// 菜单列表
class ListMust extends StatelessWidget {
  const ListMust({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:const [
        ListTile(
          leading: Icon(
              AlIcon.mi,
              color:Color.fromARGB(255, 226, 166, 1)
            ),
          title:Text("小米"),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            AlIcon.weixin,
            color:Color.fromARGB(255, 7, 207, 14)
          ),
          title:Text("微信"),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            AlIcon.zhifubao,
            color:Colors.cyan
          ),
          title:Text("支付宝"),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
        Divider(),

      ],
    );
  }
}

// 列表基础
class ListBase extends StatelessWidget {
  const ListBase({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
        ListTile(title: Text("我是一个列表")),
        Divider(),
      ],
    );
  }
}
