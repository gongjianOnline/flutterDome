import 'package:flutter/material.dart';

class MyUser extends StatefulWidget {
  final Map arguments;
  MyUser({super.key,required this.arguments});

  @override
  State<MyUser> createState() => _MyUserState();
}

class _MyUserState extends State<MyUser> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("带参数跳转")
      ),
    );
  }
}
