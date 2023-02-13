import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dio = Dio();
  final ImagePicker _picker = ImagePicker();


  _getImage()async{
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    print("File(photo!.path)");
    print(File(photo!.path));
    _ajaxFun(photo.path);
  }
  _getVideo()async{
    final XFile? photo = await _picker.pickVideo(source: ImageSource.camera);
    print("File(photo!.path)");
    print(File(photo!.path));
    _ajaxFun(photo.path);
  }

  _ajaxFun(String filePath)async{
    final formData = FormData.fromMap({
      "xxx":"zzz",
      "file":await MultipartFile.fromFile(filePath)
    });
    final response = await dio.post('https://jdmall.itying.com/imgupload', data: formData);
    print("------------");
    print(response);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("图片上传")
      ),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){_getImage();}, 
              child: const Text("拍照")
            ),
            ElevatedButton(
              onPressed: (){_getVideo();}, 
              child: const Text("录像")
            ),

          ],
        ),
      )
    );
  }
}

