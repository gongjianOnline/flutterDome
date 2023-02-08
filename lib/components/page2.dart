import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int sex = 1;
  int listSex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("单选按钮"),
      ),
      body: Column(
        children:[
          Radio(
            value: 1, 
            groupValue: sex, 
            onChanged: (index){
              setState(() {
                sex = index as int;
              });
            }
          ),
          Radio(
            value: 0, 
            groupValue: sex, 
            onChanged: (index){
              setState(() {
                sex = index as int;
              });
            }
          ),
          RadioListTile(
            title:const Text("男"),
            value: 1, 
            groupValue: listSex, 
            onChanged: (index){
              setState((){
                listSex = index as int;
              });
            }
          ),
          RadioListTile(
            title:const Text("女"),
            value: 2, 
            groupValue: listSex, 
            onChanged: (index){
              setState((){
                listSex = index as int;
              });
            }
          )
        ],
      )
    );
  }
}

