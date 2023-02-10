import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import "dart:convert";
import 'package:flutter_html/flutter_html.dart';

class News extends StatefulWidget {
  final Map arguments;
  News({super.key,required this.arguments});
  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List docData = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();

  }
  _getData()async{
    var newId = widget.arguments["newId"];
    var response = await Dio().get("https://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=$newId");
    setState(() {
      docData = json.decode(response.data)['result'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新闻详情")
      ),
      body:docData.isNotEmpty?ListView(
        children: [
          Text("${docData[0]['title']}"),
          Html(
            data:"${docData[0]['content']}",
            onLinkTap:((url, context, attributes, element){
              print(url);
              print(context);
              print(attributes);
              print(element);
            } ),
          ),
        ],
      ):const Center(
        child: CircularProgressIndicator(),
      ),

    );
  }
}