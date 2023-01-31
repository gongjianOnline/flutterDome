import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("hello")),
      body:Column(
        children:const [
          MyApp(),
          MyButton(),
          MyText()
        ],
      )
    )
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin:const EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.red, // 背景颜色
        border:Border.all( // 边框
          color:Colors.blueAccent,
          width: 2
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueAccent,
            offset: Offset(2,2),
            blurRadius: 10
          )
        ]
      ),
      child: const Text("测试文本"),
    );  
  }
}


class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        width: 100,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:Colors.blue[600],
          borderRadius: BorderRadius.circular(6)
        ),
        child: const Text(
          "按钮",
          style:TextStyle(
            color:Color.fromRGBO(255, 255, 255, 1),
            fontSize: 18
          )
        ),
      ),
    );
  }
}


class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        border:Border.all(
          color:Colors.blueAccent,
          width: 1
        )
      ),
      child: const Text(
        "测试文本测试文本测试文本测试文本测试文本测试文本",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          color: Colors.red,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.blueAccent,
          decorationStyle: TextDecorationStyle.wavy
        ),
      ),
    );
  }
}