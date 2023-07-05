import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../../Splash/View/Components/splash_title.dart';

Widget listeddetailcard (BuildContext context,{ 
  
  
  required String title,
  required String paragraph1,
  required String paragraph2,
required String paragraph3,
required String clienttitle,
required String clientname,
required String address,
  required String time,
  required String location,
  required String timer,
  required String dollarsign,


required String price
 }){
  return Container(
  
    width: MediaQuery.sizeOf(context).width*1,
    decoration: BoxDecoration(
      
      boxShadow: [
        BoxShadow(
          color:AppColor.secondaryblackcolor.withOpacity(.1),
          offset: Offset(0, 1),
          blurRadius: 8
        )
      ],
      color: AppColor.scaffoldcolor, borderRadius: BorderRadius.circular(Sizes.size20)
    ),
  child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: Sizes.size10),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      customsizedbox(context , height: Sizes.size20),
    textWidget(title, AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize13, TextAlign.left, TextStyles.ubuntumedium),
      customsizedbox(context , height: Sizes.size20),
     textWidget(paragraph1, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize8, TextAlign.left, TextStyles.ubunturegular),
    customsizedbox(context , height: Sizes.size20),
  
  
  
   textWidget(paragraph2, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize8, TextAlign.left, TextStyles.ubunturegular),
 customsizedbox(context , height: Sizes.size20),
 
  
  textWidget(paragraph3, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize8, TextAlign.left, TextStyles.ubunturegular),
  
   customsizedbox(context , height: Sizes.size20),
   textWidget(clienttitle, AppColor.blackcolor,TextStyles.fontWeight500, TextStyles.fontSize13, TextAlign.left, TextStyles.ubuntumedium),
   textWidget(clientname, AppColor.attoureasycolor,TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular) ,
  
  customsizedbox(context , height: Sizes.size30),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(children: [
  SvgPicture.asset(location, height: Sizes.size10, width: Sizes.size10,),
  SizedBox(width: 3,),
   textWidget(address,
       AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left, TextStyles.ubuntumedium),
    ],),
    Row(children: [
      
      SvgPicture.asset(timer ,  height: Sizes.size10, width: Sizes.size10,),
      SizedBox(width: 3,),
   textWidget(time,
       AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left, TextStyles.ubuntumedium),
    ],),
   Row(children: [
      
      Image.asset( dollarsign, height: Sizes.size10, width: Sizes.size10, color: AppColor.splashtitlecolor,),
  
  SizedBox(width: Sizes.size3,),
   textWidget(price,
       AppColor.splashtitlecolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubuntumedium),
    ],),
  ],)    ,
  SizedBox(height: Sizes.size20,),
  ],),
  ),
  );
}