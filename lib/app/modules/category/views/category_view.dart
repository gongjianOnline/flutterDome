import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import "../../../../utils/screenutil.dart";

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('CategoryView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child:Column(
          children: [
            Container(
              width: ScreenUtil.width(1080),
              height: ScreenUtil.height(684),
              decoration:const BoxDecoration(
                color:Colors.red
              ),
            )
          ],
        )
      ),
    );
  }
}
