import 'package:flutter/material.dart';


class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List listData = ['this is  1',"this is 2"];
  final globalKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("animatedList列表")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          globalKey.currentState!.insertItem(listData.length-1);
          listData.add("this is add item");
        },
        child:const Icon(Icons.add),
      ),
      body: AnimatedList(
        key: globalKey,
        initialItemCount: listData.length,
        itemBuilder: (BuildContext context,int index,animation){
          return FadeTransition(
            opacity: animation,
            child: Text("${listData[index]}"),
          );
        },
      )
    );
  }
}

