import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';


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
        child: PhotoViewGallery.builder(
          itemCount: widget.arguments['imageData'].length, 
          pageController: PageController(initialPage: widget.arguments["defaultImageIndex"]), // 显示默认图片的下标
          builder: (BuildContext context, int index){
            return PhotoViewGalleryPageOptions(
              imageProvider: NetworkImage(widget.arguments['imageData'][index]["image"]),
              initialScale: PhotoViewComputedScale.contained * 0.8,
            );
          }
        )
      )
    );
  }
}

