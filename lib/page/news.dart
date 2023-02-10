import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("webView")
      ),
      body:Column(
        children: [
          Expanded(
            flex: 1,
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url:Uri.parse("https://www.baidu.com")
              ),
            )
          )
        ],
      )
    );
  }
}


