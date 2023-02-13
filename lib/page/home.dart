import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("打开内部APP")
      ),
      body:ElevatedButton(
        onPressed: () async {
          final Uri weixin = Uri.parse('weixin://');
          if(await canLaunchUrl(weixin)){
            await launchUrl(weixin);
          }
        },
        child:const Text("开微信"),
      )
    );
  }
}