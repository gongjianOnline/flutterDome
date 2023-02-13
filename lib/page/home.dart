import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  XFile? _pickedFile;
  final ImagePicker _picker = ImagePicker();
// 调用相机
  _getCamera()async{
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
    print("--------------------");
    print(pickedFile!.path);
    setState((){
      _pickedFile = pickedFile;
    });
  }

  _getSource()async{
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    print("--------------------");
    print(pickedFile!.path);
    setState((){
      _pickedFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("拍照及相册操作"),
      ),
      body:ListView(
        children: [
          ElevatedButton(
            onPressed: (){
              _getCamera();
            }, 
            child: const Text("拍照")
          ),
          ElevatedButton(
            onPressed: (){
              _getSource();
            }, 
            child: const Text("选择相册")
          ),
          _pickedFile == null?Text("选择照片")
          :Image.file(File(_pickedFile!.path))
        ],
      )
    );
  }
}
