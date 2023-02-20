import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/fontIcon.dart';
import '../controllers/home_controller.dart';
import "../../../../utils/screenutil.dart";

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                width: MyScreenUtil.width(1080),
                height: MyScreenUtil.height(684),
                decoration:const  BoxDecoration(
                  color: Colors.red
                ),
              ),
            ],
          ),
          topBar()
        ],
      ),
      
    );
  }
}


// 顶部导航栏
Widget topBar(){
  return Positioned(
          top: MyScreenUtil.getStatusBarHeight(),
          left: 0,
          right: 0,
          child:SizedBox(
            width:MyScreenUtil.getScreenWidth(),
            height: MyScreenUtil.height(98),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                const Icon(MyIcons.xiaomi,color:Colors.white),
                Container(
                  width: MyScreenUtil.width(648),
                  height: MyScreenUtil.height(97),
                  alignment:Alignment.centerLeft,
                  padding: const EdgeInsets.only(left:10,right:10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.5),
                    borderRadius: BorderRadius.circular(MyScreenUtil.radius(97))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child:Row(
                          children:const  [
                            Icon(Icons.search,color:Colors.black45),
                            Text("手机",style: TextStyle(color:Colors.black45))
                          ],
                        )
                      ),
                      Icon(MyIcons.saomiao,color: Colors.black45,size:MyScreenUtil.fontSize(48))
                    ],
                  ),
                ),
                SizedBox(
                  width: MyScreenUtil.width(187),
                  height: MyScreenUtil.height(97),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(MyIcons.code,color:Colors.white),
                      Icon(MyIcons.xinxi,color:Colors.white),
                    ],
                  ),
                )
              ],
            ),
          )
        );
} 