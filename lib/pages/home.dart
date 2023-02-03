import 'package:flutter/material.dart';
import "./test.dart";
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("home")
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context){
                  return const MyTest();
                },
              ),
            );
          },
          child: const Text("next"),
        ),
      ),
    );
  }
}
