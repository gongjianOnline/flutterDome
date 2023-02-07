import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration:Duration(seconds: 1),
      vsync:this
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("显式动画")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _controller.repeat(reverse: true);
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        // child:RotationTransition(
        //   turns: _controller,
        //   child:const FlutterLogo(size: 100),
        // ),
        // child:FadeTransition(
        //   opacity: _controller,
        //   child:const FlutterLogo(size: 100),
        // ),
        child:ScaleTransition(
          scale: _controller,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        )
      )
    );
  }
}

