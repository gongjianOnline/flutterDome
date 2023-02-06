import 'package:flutter/material.dart';


class MyPageView3 extends StatefulWidget {
  const MyPageView3({super.key});

  @override
  State<MyPageView3> createState() => _MyPageView3State();
}

class _MyPageView3State extends State<MyPageView3> {
  List <Widget> listData = [];

  @override
  Widget build(BuildContext context) {
    for(int i = 0;i<10;i++){
      listData.add(
        Text("this is index $i")
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("无线下拉组件"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        onPageChanged: (index){
          if(index+2 > listData.length ){
            listData.addAll([
              Text("this is index ${listData.length+1}"),
              Text("this is index ${listData.length+2}")
            ]);
          }
        },
        children: listData,
      ),
    );
  }
}

