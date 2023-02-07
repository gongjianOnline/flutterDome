import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("内边距动画"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            flag = !flag;
          });
        },
        child: const Icon(Icons.add),
      ),
      body:AnimatedPadding(
        padding:EdgeInsets.fromLTRB(0, flag?0:200, 0, 0),
        duration:const Duration(seconds: 1),
        curve: Curves.slowMiddle,
        child: Container(
          width: 100,
          height: 100,
          decoration:const BoxDecoration(
            color: Colors.red
          ),
        ),
      )
    );
  }
}

