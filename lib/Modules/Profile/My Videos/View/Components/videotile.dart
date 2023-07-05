

import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';

import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../../Utils/theme/size.dart';

Widget videotile (BuildContext context , {required String tileimage}){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Container(
      color: AppColor.scaffoldcolor,
      width: MediaQuery.sizeOf(context).width*1,
      child: Column(
        
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(tileimage,
            color: AppColor.imagetilecolor,
            colorBlendMode: BlendMode.dst,
             width:MediaQuery.sizeOf(context).width*1  ,),
          ),
        
    customsizedbox(context , height: Sizes.size5),
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        textWidget('Luxary Apartment at Mexico Tower', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize16, TextAlign.left, TextStyles.ubunturegular),
       Icon(Icons.more_vert_outlined , color: AppColor.blackcolor,) 
      ],)
      ],),
    ),
  );
}