import 'package:flutter/material.dart';


class MyPares extends StatefulWidget {
  const MyPares({super.key});

  @override
  State<MyPares> createState() => _MyParesState();
}

class _MyParesState extends State<MyPares> {
  final GlobalKey _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("获取子组件")
      ),
      body:Column(
        children:[
          const Text("this is pares"),
          ElevatedButton(
            onPressed: (){
              var state = _globalKey.currentState as _MyChildState;
              print(state.num);
              state.fun();

              var getWidget = _globalKey.currentWidget as MyChild;
              print(getWidget);
            }, 
            child:const Text("获取属性")
          ),
          MyChild(key: _globalKey)
        ],
      )
    );
  }
}


class MyChild extends StatefulWidget {
  MyChild({super.key});

  @override
  State<MyChild> createState() => _MyChildState();
}

class _MyChildState extends State<MyChild> {
  int num = 0;
  fun(){
    print(num);
  }
  @override
  Widget build(BuildContext context) {
    return const Text('this is child');
  }
}