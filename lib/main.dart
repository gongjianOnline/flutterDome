import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:permission_handler/permission_handler.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 初始化参数
  late Map<String, Object> _locationResult;
  late StreamSubscription<Map<String, Object>> _locationListener;
  AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();
  
  // 初始化
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AMapFlutterLocation.updatePrivacyShow(true, true);
    AMapFlutterLocation.updatePrivacyAgree(true);
    // 申请定位权限
    requestPermission();
    // 初始化Key
    AMapFlutterLocation.setApiKey(
        "019bb1dd550a1d94aeae3e1557bcd365", "ios ApiKey"
    );
    // 注册定位结果监听
    _locationListener = _locationPlugin
      .onLocationChanged()
      .listen((event) {
        print("------------");
        print(event);
        setState(() {
          _locationResult = event;
        });
      });
  }

  // 生命周期函数销毁
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    ///移除定位监听
    if (null != _locationListener) {
      _locationListener.cancel();
    }

    ///销毁定位
    if (null != _locationPlugin) {
      _locationPlugin.destroy();
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('高德地图')
        ),
        body:Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  _startLocation();
                }, 
                child: const Text("开启定位")
              )
            ],
          ),
        )
      ),
    );
  }

  // 申请定位权限
  requestPermission()async{
    bool hasLocationPermission = await requestLocationPermission();
    if (hasLocationPermission) {
      print("定位权限申请通过");
    } else {
      print("定位权限申请不通过");
    }
  }
  // 同意true 不同意返回false 如果是false 会重复提示一次是否允许定位权限
  requestLocationPermission()async{
    var status = await Permission.location.status;
    if (status == PermissionStatus.granted) {
      //已经授权
      return true;
    } else {
      //未授权则发起一次申请
      status = await Permission.location.request();
      if (status == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

   ///设置定位参数
  void _setLocationOption() {
    if (null != _locationPlugin) {
      AMapLocationOption locationOption = new AMapLocationOption();
      ///是否单次定位
      locationOption.onceLocation = false;
      ///是否需要返回逆地理信息
      locationOption.needAddress = true;
      ///逆地理信息的语言类型
      locationOption.geoLanguage = GeoLanguage.DEFAULT;
      locationOption.desiredLocationAccuracyAuthorizationMode =
          AMapLocationAccuracyAuthorizationMode.ReduceAccuracy;
      locationOption.fullAccuracyPurposeKey = "AMapLocationScene";
      ///设置Android端连续定位的定位间隔
      locationOption.locationInterval = 2000;
      ///设置Android端的定位模式<br>
      ///可选值：<br>
      ///<li>[AMapLocationMode.Battery_Saving]</li>
      ///<li>[AMapLocationMode.Device_Sensors]</li>
      ///<li>[AMapLocationMode.Hight_Accuracy]</li>
      locationOption.locationMode = AMapLocationMode.Hight_Accuracy;
      ///设置iOS端的定位最小更新距离<br>
      locationOption.distanceFilter = -1;
      ///设置iOS端期望的定位精度
      /// 可选值：<br>
      /// <li>[DesiredAccuracy.Best] 最高精度</li>
      /// <li>[DesiredAccuracy.BestForNavigation] 适用于导航场景的高精度 </li>
      /// <li>[DesiredAccuracy.NearestTenMeters] 10米 </li>
      /// <li>[DesiredAccuracy.Kilometer] 1000米</li>
      /// <li>[DesiredAccuracy.ThreeKilometers] 3000米</li>
      locationOption.desiredAccuracy = DesiredAccuracy.Best;
      ///设置iOS端是否允许系统暂停定位
      locationOption.pausesLocationUpdatesAutomatically = false;
      ///将定位参数设置给定位插件
      _locationPlugin.setLocationOption(locationOption);
    }
  }

  // 开始定位
  _startLocation(){
    if(null != _locationPlugin){
      _setLocationOption();
      _locationPlugin.startLocation();
    }
  }
  


  
}