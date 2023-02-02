import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title:const Text("搜索布局")),
      body:MyApp()
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(10),
      child: ListView(
        children: [
          Row(
            children:const [
              Text(
                "热搜",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          const Divider(),
          Wrap(
            spacing: 10,
            children: [
              OutlinedButton(onPressed: (){}, child: const Text("电脑")),
              OutlinedButton(onPressed: (){}, child: const Text("电子数码")),
              OutlinedButton(onPressed: (){}, child: const Text("家电")),
              OutlinedButton(onPressed: (){}, child: const Text("手机")),
              OutlinedButton(onPressed: (){}, child: const Text("Thinkpad")),
              OutlinedButton(onPressed: (){}, child: const Text("huawei")),
              OutlinedButton(onPressed: (){}, child: const Text("xaiomi")),
              OutlinedButton(onPressed: (){}, child: const Text("oppo")),
            ],
          ),
          const Divider(),
          Row(
            children:const [
              Text(
                "列表",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          const Divider(),
          Column(
            children:const [
              ListTile(title: const Text('电脑')),
              ListTile(title: const Text('电脑')),
              ListTile(title: const Text('电脑')),
              ListTile(title: const Text('电脑')),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.delete_outlined), label:const Text("清空历史记录"))
              )
            ],
          )
        ],
      ),
    );
  }
}

class Warp {
}




