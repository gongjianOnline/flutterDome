import 'package:flutter/material.dart';
import "dart:async";

void main(){
  runApp(const MaterialApp(
    home:MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Stream流操作")),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                print("1111");
                _controller.add(1);
              }, 
              child:const Text("add1")
            ),
            ElevatedButton(
              onPressed: (){
                print("1111");
                _controller.add(2);
              }, 
              child:const Text("add2")
            ),
            StreamBuilder(
              stream:_controller.stream,
              builder: (context,snapshot){
                return Text("${snapshot.data}");
              }
            )

          ],
        ),
      )
    );
  }
}

