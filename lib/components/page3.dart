import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("透明度动画")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            flag = !flag;
          });
        },
        child: const Icon(Icons.add),
      ),
      body:AnimatedOpacity(
        opacity:flag?1:0.5,
        duration:const Duration(seconds: 1,milliseconds: 100),
        child: Container(
          width: 100,
          height: 100,
          decoration:const BoxDecoration(
            color:Colors.red
          ),
          child:  const CircularProgressIndicator(),
        ),
      )
    );
  }
}

