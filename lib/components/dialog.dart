import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type:MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration:const BoxDecoration(
            color:Colors.white
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("标题"),
                  InkWell(
                    child:const Icon(Icons.close),
                    onTap:(){
                      Navigator.pop(context,"关闭了");
                    }
                  )
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}


