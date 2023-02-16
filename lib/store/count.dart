import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  StoreCount extends GetxController{
  RxInt counter = 0.obs;
  add(){
    counter.value++;
  }
  del(){
    counter.value--;
  }
}






