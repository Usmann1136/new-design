import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../Utils/routes/routes_name.dart';

import '../../../../../Utils/theme/size.dart';

Widget sendicon (BuildContext context){
  return   IconButton(
    onPressed: (){
      Get.toNamed(RoutesName.inbox2screen , arguments: [
        Get.arguments[0],
        Get.arguments[1]
      ]);
    },
    icon: SvgPicture.asset('icons/send-icon.svg' , height: Sizes.size24, width: Sizes.size24,));
}