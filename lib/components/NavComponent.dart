import 'package:flutter/material.dart';
import "../page/home.dart";
import "../page/new.dart";
import "../page/void.dart";
import "../page/my.dart";

class NavComponent extends StatefulWidget {
  const NavComponent({super.key});

  @override
  State<NavComponent> createState() => _NavComponentState();
}

class _NavComponentState extends State<NavComponent> {
  int currentIndex = 0;
  List<Widget> PageData =const [
    MyHome(),
    MyNew(),
    MyVoid(),
    MyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("仿头条布局"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.quiz_outlined))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type:BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "热点"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: "视频"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_rounded),
            label: "我的"
          ),
        ],
      ),
      drawer:const Drawer(),
      
      body:PageData[currentIndex],
      
    );
  }
}