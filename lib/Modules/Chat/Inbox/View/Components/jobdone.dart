import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/size.dart';

Widget jobdone (BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25 , vertical: Sizes.size15),
    child: Column(
      
      children: [
      textWidget('Job is done', AppColor.attoureasycolor, TextStyles.fontWeight500, Sizes.size9, TextAlign.left, TextStyles.ubunturegular),
      textWidget('You cannot chat with this agent now', AppColor.attoureasycolor,  TextStyles.fontWeight500, TextStyles.fontSize14, TextAlign.center, TextStyles.ubunturegular)
    ],),
  );
}