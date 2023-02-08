import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(
    home: MyApp(),
  ));
}

Future<String> promise(){
  // return Future((){
  //   return "hello flutter";
  // });
  return Future.delayed(const Duration(seconds:5),(){
    return "hello flutter";
  });
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("this is Page")
      ),
      body:Column(
        children: [
          Text("计数器 $count"),
          ElevatedButton(
            onPressed: (){
              promise().then((value){print(value);});
              setState((){
                count++;
              });
            }, 
            child: const Text("add")
          )
        ],
      ),
    );
  }
}





