import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController videoPlayerController = VideoPlayerController.network(
    'https://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4');
  
  late ChewieController chewieController = ChewieController(
    aspectRatio:3/2,
    videoPlayerController: videoPlayerController,
    autoPlay: true,
    looping: true,
    optionsBuilder: (context, defaultOptions)async{
      await showModalBottomSheet(
        context: context, 
        builder: (context){
          return ListView(
            children: [
              ListTile(
                title:const Text("播放速度"),
                onTap: (){
                  print("-----------");
                  print(defaultOptions);
                  defaultOptions[0].onTap!();
                },
              ),
              ListTile(
                title:const Text("取消"),
                onTap: (){

                },
              )
            ],
          );
        }
      );
    }
  );

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
        title:const Text("视频播放组件")
      ),
      body: AspectRatio(
        aspectRatio:3/2,
        child:Chewie(
          controller: chewieController,
        )
      ),
    );
  }
}

