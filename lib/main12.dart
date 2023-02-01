import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar:AppBar(title:const Text("stack层叠")),
      body:MyApp()
    )
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Stack(
        children:const [
          Positioned(
            left: 10,
            child: Icon(Icons.backspace_rounded),
          ),
          Positioned(
            right: 10,
            child: Icon(Icons.backspace_rounded),
          )
        ],
      ),
    );
  }
}


class MyApp_cc extends StatelessWidget {
  const MyApp_cc({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size);
    return Stack(
      children: [
        ListView(
          children: const [
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1")),
            ListTile(title:Text("xxx1"))
          ],
        ),
        Positioned(
          left: 0,
          top: 0,
          width: size.width,
          height: 20,
          child:Container(
            color: Colors.red,
            child:const Text('xxxx')
          )
        )
      ],

    );
  }
}


