import 'package:flutter/material.dart';

void main() {
  // runApp(const Center(
  //   child: Text(
  //     "hello flutter",
  //     textDirection: TextDirection.ltr,
  //     style:TextStyle(
  //       color:Colors.red,
  //       fontSize: 40
  //     )
  //   ),
  // ));

  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("hello Flutter")),
      body:const MyApp()
    ),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child:Text(
            "hello world",
            style: TextStyle(
              color: Colors.red,
              fontSize: 40
            )
          )
        );
  }

}
