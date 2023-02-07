import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Hero动画")
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: _renderChild(),
      ),
    );
  }

  List list = [
    {
      "image":"https://tse1-mm.cn.bing.net/th/id/OIP-C.QPH1IBosDYBqaU3O6wV3YAHaEo?pid=ImgDet&rs=1"
    },
    {
      "image":"https://scpic.chinaz.net/files/pic/pic9/202009/apic27858.jpg"
    },
    {
      "image":"https://pic3.zhimg.com/v2-58d652598269710fa67ec8d1c88d8f03_r.jpg?source=1940ef5c"
    },
    {
      "image":"https://ts1.cn.mm.bing.net/th/id/R-C.df4462fabf18edd07195679a5f8a37e5?rik=FnNvr9jWWjHCVQ&riu=http%3a%2f%2fseopic.699pic.com%2fphoto%2f50059%2f8720.jpg_wh1200.jpg&ehk=ofb4q76uCls2S07aIlc8%2bab3H5zwrmj%2bhqiZ%2fyw3Ghw%3d&risl=&pid=ImgRaw&r=0"
    },
    {
      "image":"https://pic.3gbizhi.com/2019/1112/20191112013312648.jpg"
    },

  ];
  _renderChild(){
    var ChildEl;
    ChildEl = list.map((item){
      return GestureDetector(
        onTap:(){
          Navigator.pushNamed(
            context, 
            "/page2",
            arguments:{"image":item['image']}
          );
        },
        child:Container(
          child:Hero(
            tag:item['image'],
            child:Image.network("${item['image']}",fit:BoxFit.cover)
          )
        )
      );
    });
    return ChildEl.toList();
  }
}


