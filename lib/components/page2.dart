import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =  AnimationController(
      vsync:this,
      duration:const  Duration(seconds: 1),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("自定义图标交错动画"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _controller.forward();
        },
        child: Icon(Icons.add),
      ),
      body:Center(
        child:  Stack(
          children:[
            ScaleTransition(
                scale: _controller.drive(Tween(begin: 0.0, end: 1.0)
                    .chain(CurveTween(curve: const Interval(0.5, 1)))),
                child: const Icon(Icons.close, size: 40)),
            ScaleTransition(
                scale: _controller.drive(Tween(begin: 1.0, end: 0.0)
                    .chain(CurveTween(curve: const Interval(0, 0.5)))),
                child: const Icon(Icons.search, size: 40)),
          ],
        )
      )
    );
  }
}

