import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  final Map arguments;
  Page2({super.key,required this.arguments});
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments["image"]);
    
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Hero(
        tag: widget.arguments["image"],
        child: Scaffold(
          backgroundColor: Colors.black,
          body:AspectRatio(
              aspectRatio:16/9,
              child: Image.network("${widget.arguments["image"]}"),
            ),
        )
      )
    );
  }
}

