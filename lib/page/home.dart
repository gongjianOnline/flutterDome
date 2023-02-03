import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> 
with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: TabBar(
          isScrollable :true,
          unselectedLabelColor:Colors.black,
          labelColor:Colors.blue,
          controller: _tabController,
          indicatorSize:TabBarIndicatorSize.label,
          tabs:const [
            Tab(text:"热门"),
            Tab(text:"热门1"),
            Tab(text:"热门2"),
            Tab(text:"热门3"),
            Tab(text:"热门4"),
            Tab(text:"热门5"),
            Tab(text:"热门6"),
            Tab(text:"热门7"),
            Tab(text:"热门8"),
            Tab(text:"热门9")
          ]
        ),
      ),
      body: TabBarView(
        controller: _tabController, 
        children:[
          ListView(
            children:const [
              ListTile(title: Text("11111")),
              ListTile(title: Text("11112")),
              ListTile(title: Text("11113")),
              ListTile(title: Text("11114")),
              ListTile(title: Text("11115")),
              ListTile(title: Text("11116")),
              ListTile(title: Text("11117")),
              ListTile(title: Text("11118")),
              ListTile(title: Text("11119")),
              ListTile(title: Text("11110")),
              ListTile(title: Text("111111")),
              ListTile(title: Text("111112")),
              ListTile(title: Text("111113")),
              ListTile(title: Text("111114")),
              ListTile(title: Text("111115")),
            ],
          ),
          const Text("热门1"),
          const Text("热门2"),
          const Text("热门3"),
          const Text("热门4"),
          const Text("热门5"),
          const Text("热门6"),
          const Text("热门7"),
          const Text("热门8"),
          const Text("热门9"),
        ],
      ),
    );
  }
}