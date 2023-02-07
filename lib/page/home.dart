import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter中的key"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, "/page1");
              }, 
              child: const Text("动画组件")
            )
          ],
        ),
      ),
    );
  }
}


