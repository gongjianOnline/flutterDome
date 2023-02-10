import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import "dart:convert";


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List listData = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData()async{
    var response = await Dio().get("https://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1");
    var res = response.data;
    setState(() {
      listData = json.decode(res)["result"];
    });
    print(json.decode(res)["result"]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("新闻列表")
      ),
      body: ListView(
        children:listData.map((item){
          return ListTile(
            title:Text("${item['title']}"),
            onTap: (){
              Navigator.pushNamed(
                context, 
                "/news",
                arguments: {"newId":item['aid']}
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

