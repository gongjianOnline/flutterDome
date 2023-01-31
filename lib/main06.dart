import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("图片组件")),
      body:Column(
        children:const [
          // MyImag(),
          MyLogo(),
          MyState(),
          MyClipOval()
        ],
      )
    )
  ));
}

class MyImag extends StatelessWidget {
  const MyImag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      margin:const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue
        )
      ),
      child: Image.network(
        "https://s1.ax1x.com/2023/01/31/pS0eYVA.png",
        fit:BoxFit.cover
      ),
    );
  }
}

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1
        ),
        image:const DecorationImage(
          image: NetworkImage("https://s1.ax1x.com/2023/01/31/pS0eYVA.png"),
          fit:BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(75)
      ),
    );
  }
}


class MyState extends StatelessWidget {
  const MyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration:BoxDecoration(
        border: Border.all(
          color:Colors.black,
          width: 1
        )
      ),
      child:Image.asset(
        "images/a.png",
        fit:BoxFit.cover
      )
    );
  }
}


class MyClipOval extends StatelessWidget {
  const MyClipOval({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        "images/a.png",
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}