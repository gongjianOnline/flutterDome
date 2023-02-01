import 'package:flutter/material.dart';
import  "./mock/maoyan.dart";
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("grid网格布局")),
      body:MyApp()
    )
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  _render(){
    var data;
    data = maoyanData.map((item){
      return Column(
        children: [
          Container(
            // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Image.network(
              "${item['img']}",
              fit:BoxFit.cover
            ),
          ),
          Text("${item['nm']}")
        ],
      );
    });

    return data.toList();
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10,
    //   childAspectRatio: 0.3,
    //   children: _render(),
    // );
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // crossAxisSpacing: 10,
        // childAspectRatio: 0.3,
      ), 
      itemBuilder: (context,index){
        return Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.red
                )
              ),
              // margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Image.network(
                "${maoyanData[index]['img']}",
                fit:BoxFit.cover
              ),
            ),
            Text("${maoyanData[index]['nm']}")
          ],
        );
      }
    );
  }
}


