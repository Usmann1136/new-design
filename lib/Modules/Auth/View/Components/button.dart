import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/font_style.dart';

Widget primarybutton (BuildContext context , {VoidCallback? onTap , 

Color? buttoncolor = AppColor.splashtitlecolor,
String? text ='Sign in'}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
      
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: buttoncolor ,
          
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.5),
          child: textWidget(text!, AppColor.scaffoldcolor, FontWeight.w500, TextStyles.fontSize18 , TextAlign.center, TextStyles.ubuntumedium),
        ),
        width: MediaQuery.of(context).size.width*1,),
    ),
  );
}