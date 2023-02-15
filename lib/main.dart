import 'dart:io';

import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:open_filex/open_filex.dart';
import 'package:permission_handler/permission_handler.dart';

void main(){
  runApp(MaterialApp(
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
  void initState() {
    // TODO: implement initState
    super.initState();
    _getAppInfo();
    _getDocDirectory();
  }

  // 获取应用信息
  _getAppInfo()async{
    // 获取应用信息
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    print(packageInfo.version);
  }
  // 获取存储路径
  _getDocDirectory()async{
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    print("-------");
    print(appDocPath);
  }
  // 检查权限
  _checkPermission()async{
    if(Theme.of(context).platform == TargetPlatform.android){
      final status = await Permission.storage.status;
      if(status != PermissionStatus.granted){
        final result = await Permission.storage.request();
        if (result == PermissionStatus.granted) {
          return true;
        }
      }else{
        return true;
      }
    }
    return false;
  }

  // 下载文件
  _downLoad()async{
    var flag = await _checkPermission();
    if(flag){
      final directory = await getExternalStorageDirectory();
      print("获取本地存储路径");
      print(directory);
      String localPath  = directory!.path;
      String appName = "aaa.apk";
      String savePath="$localPath/$appName";
      String ajaxUrl = 'https://jd.itying.com/jdshop.apk';
      Dio dio = Dio();
      await dio.download(ajaxUrl, savePath);
      await OpenFilex.open(savePath,type: "application/vnd.android.package-archive");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("自动更新组件")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _downLoad();
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}

