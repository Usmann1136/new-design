import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

Widget dummytext (BuildContext context ,{required String dummytext}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: textWidget(dummytext, AppColor.blackcolor, TextStyles.fontWeight300, 
    TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular),
  );
}