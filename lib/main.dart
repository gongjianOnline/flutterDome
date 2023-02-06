import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "./components/dialog.dart";

void main(){
  runApp(const MaterialApp(
    home:MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text("Dialog"),
        ),
        body: Center(
          child: Column(
            children: [ 
              ElevatedButton(
                onPressed: (){
                  showDialog(
                    context: context, 
                    builder: (context){
                      return AlertDialog(
                        title:const Text("alter"),
                        content:const Text("确认退出"),
                        actions: [
                          TextButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            }, 
                          child:const Text("ok")
                          ),
                          TextButton(
                            onPressed: (){

                            }, 
                          child:const Text("取消")
                          ),
                        ],
                      );
                    }
                  );
                }, 
                child: const Text("alter弹窗")
              ),
              
              ElevatedButton(
                onPressed: () async{
                  var params =await showDialog(
                    barrierDismissible:false,
                    context: context, 
                    builder:(context){
                    return SimpleDialog(
                      title:const Text("选择器"),
                      children: [
                        SimpleDialogOption(
                          onPressed: (){
                            Navigator.pop(context,"opyion1");
                          },
                          child: const Text("option1"),
                        ),
                        SimpleDialogOption(
                          onPressed: (){
                            Navigator.pop(context,"opyion2");
                          },
                          child: const Text("option2"),
                        )
                      ],
                    );
                  });
                  print(params);
                }, 
                child:const  Text("选择器弹窗")
              ),

              ElevatedButton(
                onPressed: (){
                  showModalBottomSheet(
                    context: context, 
                    builder: (context){
                      return SizedBox(
                        height: 220,
                        child: Column(
                          children: const [
                            Text("xxx"),
                            Text("xxx"),
                            Text("xxx"),
                            Text("xxx"),
                          ],
                        ),
                      );
                    }
                  );
                }, 
                child:const Text("弹出窗")),

              ElevatedButton(
                onPressed: (){
                  Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0
                  );
                },
                child: const Text("toast")
              ),

              ElevatedButton(
                onPressed: (){
                  showDialog(
                    barrierDismissible: false,
                    context: context, 
                    builder: (context){
                      return const MyDialog();
                    }
                  );
                }, 
                child:const Text("自定义Dialog")
              )

            
            ],
          ),
        )
      );
  }
}




