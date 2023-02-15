import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    home:MyApp()
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
        title:const Text("Gex体验")
      ),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Get.defaultDialog(
                  title:"提示信息",
                  middleText: "确认删除吗?",
                  confirm: TextButton(
                    onPressed: (){
                      Get.back();
                    }, 
                    child: const Text("确定")
                  ),
                  cancel: TextButton(
                    onPressed: (){
                      Get.back();
                    }, 
                    child: const Text("取消")
                  ),

                );
              }, 
              child: const Text("alter提示")
            ),

            ElevatedButton(
              onPressed: (){
                Get.bottomSheet(
                  Container(
                    color:Get.isDarkMode?Colors.black:Colors.white,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          color:Get.isDarkMode?Colors.black:Colors.white,
                          child:ListTile(
                            textColor:Get.isDarkMode?Colors.white:Colors.black,
                            title:Text("白天模式"),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            }
                          ),
                        ),
                        Container(
                          color:Get.isDarkMode?Colors.black:Colors.white,
                          child:ListTile(
                            textColor:Get.isDarkMode?Colors.white:Colors.black,
                            title:Text("黑夜模式"),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            }
                          )
                        )
                        
                        
                      ],
                    ),
                  )
                );

              }, 
              child:const Text("下拉抽屉")
            )

          ],
        ),
      )
    );
  }
}
