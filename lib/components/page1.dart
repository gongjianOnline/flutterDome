import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            flag = !flag;
          });
        },
        child:const Icon(Icons.add)
      ),
      appBar: AppBar(
        title: const Text("隐式动画"),
      ),
      body: Center(
        child:AnimatedContainer(
          duration:const Duration(seconds: 1,milliseconds: 100),
          width: flag?200:300,
          height: flag?200:300,
          decoration:const BoxDecoration(
            color:Colors.red
          ),
        ),
      )
    );
  }
}

