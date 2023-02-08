import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home:Mypage()
  ));
}

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("进度条"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
          SizedBox(height: 20),
          CircularProgressIndicator(
            backgroundColor: Colors.red,
            valueColor:AlwaysStoppedAnimation(Colors.black)
          ),
          SizedBox(height: 20),
          LinearProgressIndicator(),
          SizedBox(height: 20),
          LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value:0.52
          )
        ],
      ),
    );
  }
}

