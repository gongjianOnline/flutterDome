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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("自定义底部导航栏"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
            setState((){
              currentIndex = index;
            });
          },
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms_outlined),
              label: "闹钟"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hotel_class_rounded),
              label: "分类"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_sharp),
              label: "我的"
            ),

          ],
        ),
      ),
    );
  }
}


