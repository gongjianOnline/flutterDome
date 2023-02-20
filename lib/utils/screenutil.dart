import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyScreenUtil {
  static width(num val){return val.w;}
  static height(num val){return val.h;}
  static fontSize(num val){return val.sp;}
  static radius(num val){return val.r;}
  static getScreenWidth(){return 1.sw;}// 获取屏幕高度
  static getScreenHeight(){return 1.sh;} // 获取屏幕宽度
  static getStatusBarHeight(){
    return ScreenUtil().statusBarHeight;
  }


}