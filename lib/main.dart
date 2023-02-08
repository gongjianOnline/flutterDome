import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Stream<int> loadData(){
    return Stream.periodic(
      const Duration(seconds:5),
      (_)=>_
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData().listen((event) {print(event);});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Stream基操")
      ),
      body:const Center(
        child: Text("hello flutter"),
      )
    );
  }
}

