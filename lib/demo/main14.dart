import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.lightBlue),
    home:Scaffold(
      appBar: AppBar(title:const Text("buttton",style: TextStyle(color:Colors.white),)),
      body: MyApp(),
    )
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: (){print("click");}, 
              child: const Text("普通按钮",style:TextStyle(color:Colors.white))
            ),
            TextButton(
              onPressed: (){}, 
              child: const Text("文本按钮")
            ),
            OutlinedButton(
              onPressed: (){}, 
              child: const Text("文本按钮")
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_sharp)
            ),
            ElevatedButton.icon(
              onPressed: (){}, 
              label: const Text("闹钟"),
              icon:const Icon(Icons.access_alarm_rounded)
            )
          ],
        ),
        Row(
          children: [
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text("闹钟")
            ),
            OutlinedButton.icon(
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                elevation: MaterialStateProperty.all(20),
                side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.black,width: 2),
                  
                )
              ),
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text("闹钟")
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor:MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  const CircleBorder(side: BorderSide(color: Colors.white)),
                )
              ),
              onPressed: (){print("click");}, 
              child: const Text("普通按钮",style:TextStyle(color:Colors.white)),
            ),

          ],
        )
      ],
    );
  }
}



