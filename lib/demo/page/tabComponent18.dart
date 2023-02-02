import 'package:flutter/material.dart';
import "./tab/home.dart";
import "./tab/car.dart";
import "./tab/my.dart";
import "./tab/add.dart";
import "./tab/user.dart";

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
    MyAdd(),
    MyUser()
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
            label:""
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.add),
            label:"添加"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.verified_user_sharp),
            label:"用户"
          )
        ],
      ),

      floatingActionButton: Container(
        width: 66,
        height: 66,
        margin: const EdgeInsets.only(top:14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: Border.all(
            color:Colors.white,
            width: 3
          )
        ),
        child: FloatingActionButton(
          onPressed: (){
            print("1111");
            setState(() {
              currentIndex = 2;
            });
          }, 
          backgroundColor: currentIndex==2?Colors.amber[800]:Colors.blue[700],
          child:const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}

