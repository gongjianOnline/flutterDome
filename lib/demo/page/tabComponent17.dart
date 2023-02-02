import 'package:flutter/material.dart';
import "./tab/home.dart";
import "./tab/car.dart";
import "./tab/my.dart";
import "./tab/add.dart";

class MyTabers extends StatefulWidget {
  const MyTabers({super.key});

  @override
  State<MyTabers> createState() => _MyTabersState();
}

class _MyTabersState extends State<MyTabers> {
  int currentIndex = 0;
  List<Widget> PageData = const [
    MyHome(),
    MyCar(),
    MyPage(),
    MyAdd()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("底部导航栏组件")),
      body:PageData[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type:BottomNavigationBarType.fixed,
        onTap: (index){
          setState((){
            currentIndex = index;
          });
        },
        items:const [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label:"首页"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.security_update_good_sharp),
            label:"购物车"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.supervised_user_circle_outlined),
            label:"我的"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.add),
            label:"添加"
          ),

        ],
      ),
    );
  }
}

