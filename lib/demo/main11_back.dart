import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("Flex布局")),
      body:MyApp()
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          margin:const EdgeInsets.fromLTRB(0, 0, 0, 10),
          color:Colors.blueAccent
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network(
                  "https://s1.ax1x.com/2023/02/01/pSBVSB9.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child:SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          "https://s1.ax1x.com/2023/02/01/pSBVSB9.png",
                          fit: BoxFit.cover
                        ),
                      )
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Image.network(
                          "https://s1.ax1x.com/2023/02/01/pSBVSB9.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    )
                  ],
                )
              )
              
            )
          ],
        )
      ],
    );
  }
}