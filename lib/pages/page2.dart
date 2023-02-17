import "package:get/get.dart";
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textValue = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title:const Text("工具类验证"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("验证表单"),
            TextField(
              controller: _textValue,
            ),
            ElevatedButton(
              onPressed: (){
                print(_textValue.text);
              }, 
              child: const Text("获取表单数据")
            ),
            ElevatedButton(
              onPressed: (){
                if(GetUtils.isEmail(_textValue.text)){
                  Get.snackbar("提示信息", "当前邮箱有效");
                }else{
                  Get.snackbar("提示信息", "当前邮箱无效");
                };
              }, 
              child: const Text("获取表单数据")
            )

          ],
        ),
      ),
    );
  }
}

