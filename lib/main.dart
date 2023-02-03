import 'package:flutter/material.dart';

void main(){
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> 
with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text("自定义顶部菜单"),
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs:const [
              Tab(child: Text("热门")),
              Tab(child: Text("热门1")),
              Tab(child: Text("热门2")),
              Tab(child: Text("热门3")),
              Tab(child: Text("热门4")),
              Tab(child: Text("热门5")),
              Tab(child: Text("热门6")),
              Tab(child: Text("热门7")),
              Tab(child: Text("热门8")),
              Tab(child: Text("热门9")),
              Tab(child: Text("热门10")),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children:const  [
            Text("data"),
            Text("data1"),
            Text("data2"),
            Text("data3"),
            Text("data4"),
            Text("data5"),
            Text("data6"),
            Text("data7"),
            Text("data8"),
            Text("data9"),
            Text("data0"),
          ],
        ),


      ),
    );
  }
}

