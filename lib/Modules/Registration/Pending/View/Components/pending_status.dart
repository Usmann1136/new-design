import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../../Utils/routes/routes_name.dart';
import '../../../../../Utils/theme/font_style.dart';

Widget statusblock(BuildContext context){
  return GestureDetector(
    onTap: (){
      Get.toNamed(RoutesName.homescreen);
    },
    child: Container(
      height:Sizes.size33 ,
      width: Sizes.size116,
      decoration: BoxDecoration(color:AppColor.activedotcolor , borderRadius: BorderRadius.circular(20) ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size7),
        child: Row(children: [
          textWidget('Status:', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.center,TextStyles.ubunturegular),
           textWidget('Pending', AppColor.splashtitlecolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.center,TextStyles.ubunturegular)
        ],),
      ),
    ),
  );
}