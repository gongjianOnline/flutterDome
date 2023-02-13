import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  final ImagePicker _picker = ImagePicker();
  XFile? isFile;
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController; 

  _initVideo(url){
    videoPlayerController  = VideoPlayerController.file(url);
    chewieController  = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: false,
    );
  }


  _getPickVideo()async{
    final XFile? video = await _picker.pickVideo(source: ImageSource.camera);
    print("-----");
    print(File(video!.path));
    _initVideo(File(video!.path));
    setState(() {
      isFile = video;
    });
  }

  _getPickVideox()async{
    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    print("-----");
    print(File(video!.path));
    _initVideo(File(video!.path));
    setState(() {
      isFile = video;
    });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("视频回显"),
      ),
      body:Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: (){_getPickVideo();}, 
              child: const Text("录像")
            ),
            ElevatedButton(
              onPressed: (){_getPickVideox();}, 
              child: const Text("选择视频")
            ),
            isFile == null ? Text("选择视频"):Chewie(
              controller: chewieController,
            )
          ],
        ),
      )
    );

  }
}

