import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

Widget closeicon(BuildContext context){
   return IconButton(onPressed: (){
    Get.back();
  } , icon: Icon(Icons.close  ,
  size: 24,
   color: AppColor.blackcolor,),);
}