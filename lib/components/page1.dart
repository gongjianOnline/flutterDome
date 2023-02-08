import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late TextEditingController _xxx;
  String phoneCode = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _xxx = TextEditingController.fromValue(
      TextEditingValue(
        text:'123456',
        selection: TextSelection.fromPosition(
          TextPosition(offset: phoneCode.length)
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("文本表单"),
      ),
      body:Column(
        children: [
          Padding(
            padding:const  EdgeInsets.all(20),
            child: TextField(
              controller: _xxx,
              onChanged: (value){
                setState(() {
                  phoneCode = value;
                });
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: "请输入手机号",
                border: OutlineInputBorder()
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "请输入密码",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )
              ),
            ),
          ),
          Text("${phoneCode}"),
        ],
      )
    );
  }
}

