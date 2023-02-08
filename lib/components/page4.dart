import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  bool flags = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("开关")
      ),
      body: Switch(
        value: flags, 
        onChanged: (flag){
          setState(() {
            flags = flag;
          });
        }
      ),
    );
  }
}


