import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../../Utils/routes/routes_name.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';

Widget agenttile(BuildContext context ,  {String? image}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: ListTile(
    
      leading: Image.asset('images/Frame 48095791.png'),
      title: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        textWidget('Jack Willian', AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize16, TextAlign.left,TextStyles.ubuntumedium),
         textWidget('Verified Agent', AppColor.splashtitlecolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left,TextStyles.ubuntulight)
        
      ],),
      subtitle: textWidget('Member since 2021', AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left,TextStyles.ubuntulight) ,

      
  trailing:  InkWell(
    onTap: (){
      Get.toNamed(RoutesName.agentprofilescreen);
    },
    child: SvgPicture.asset(image!)),
    ),
  );
}