import 'package:flutter/material.dart';
import "dart:convert";
import 'package:shared_preferences/shared_preferences.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _addFun()async{
    final prefs = await SharedPreferences.getInstance();
    // prefs.setString("name","张三");
    // prefs.setStringList("ListStr",["1",'2']);
    List list = ["1",2,3,4,5];
    String  xxx = json.encode(list);
    prefs.setString("ListData",xxx);
  }
  _getFun()async{
    final prefs = await SharedPreferences.getInstance();
    // String? num = prefs.getString("name");
    // List<String>? ListStr = prefs.getStringList("ListStr");
    String? ListData = prefs.getString("ListData");
    // print(num);
    // print(ListStr);
    print(json.decode(ListData as String)[0]);
  }
  _removeFun()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("ListStr");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("本地存储")
      ),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){_addFun();}, 
              child: const Text("添加数据")
            ),
            ElevatedButton(
              onPressed: (){_getFun();}, 
              child: const Text("获取数据")
            ),
            ElevatedButton(
              onPressed: (){}, 
              child: const Text("删除数据")
            ),

          ],
        ),
      )
    );
  }
}

