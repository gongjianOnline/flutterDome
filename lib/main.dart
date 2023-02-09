import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter"),
        ),
        body: Stack(
          children: [
            Positioned(child: Text("1+1")),
            Align(
              alignment: Alignment.bottomCenter,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [1, 2, 3, 4, 5, 6, 7, 8, 9]
                    .map((val) => TextButton(
                        onPressed: () {}, child: Text(val.toString())))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
