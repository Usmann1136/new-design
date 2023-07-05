import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../../Utils/theme/font_style.dart';


Widget agentjobcards (BuildContext context,

{VoidCallback? onTap , required String title1,
  required String subitle2,
  required String address,
  required String time,
  required String location,
  required String timer,
 required String pasttime,
  required String dollarsign,
}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
    
      width: MediaQuery.sizeOf(context).width*1,
      decoration: BoxDecoration(
        
        boxShadow: [
          BoxShadow(
            color:AppColor.secondaryblackcolor.withOpacity(.1),
            offset: Offset(0, 1),
            blurRadius: 8
          )
        ],
        color: AppColor.scaffoldcolor, borderRadius: BorderRadius.circular(20)
      ),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textWidget(title1, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize13, TextAlign.left, TextStyles.ubuntumedium),
              textWidget(pasttime, AppColor.attoureasycolor, TextStyles.fontWeight500, TextStyles.fontSize10, TextAlign.left, TextStyles.ubuntumedium),
        ],),
    
       SizedBox(height: 10,),
        textWidget(subitle2,
         AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize8, TextAlign.left, TextStyles.ubunturegular),
    SizedBox(height: 10,),  
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(children: [
  SvgPicture.asset(location, height: 10, width: 10,),
     SizedBox(width: 3,),
     textWidget(address,
         AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left, TextStyles.ubuntumedium),
      ],),
      Row(children: [
        
        SvgPicture.asset(timer ,  height: 10, width: 10,),
           SizedBox(width: 3,),
     textWidget(time,
         AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left, TextStyles.ubuntumedium),
      ],),
     Row(children: [
        
        Image.asset(dollarsign , height: 10, width: 10, color: AppColor.splashtitlecolor,),
        SizedBox(width: 3,),
     textWidget('180',
         AppColor.splashtitlecolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubuntumedium),
      ],),
    ],)    ,
    SizedBox(height: 20,),
    ],),
    ),
    ),
  );
}