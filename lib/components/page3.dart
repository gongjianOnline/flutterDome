import 'package:flutter/material.dart';


class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List listData = [
    {
      "label":"name1",
      "value":false
    },
    {
      "label":"name2",
      "value":false
    },
    {
      "label":"name3",
      "value":false
    },
  ];
  initChecked(){
    var initList;
    initList = listData.map((item){
      return CheckboxListTile(
        title:Text("${item['label']}"),
        value:item["value"],
        onChanged:(flag){
          print(flag);
          setState(() {
            item["value"] = flag;
          });
        }
      );
    });
    return initList.toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("checked")
      ),
      body: Column(
        children: initChecked()
      ),
    );
  }
}


