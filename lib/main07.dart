import 'package:flutter/material.dart';
import 'ALIcon07.dart';
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("icon")),
      body:Column(
        children:const [
          MyIcon(),
        ],
      )
    )
  ));
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:const [
          Icon(
            Icons.home,
            size: 38,
            color: Colors.red,
          ),
          SizedBox(height: 10),
          Icon(Icons.flutter_dash),
          SizedBox(height: 10),
          Icon(AlIcon.zhifubao),
          SizedBox(height: 10),
          Icon(AlIcon.mi),
          SizedBox(height: 10),
          Icon(AlIcon.weixin),
        ],
      ),
    );
  }
} 

