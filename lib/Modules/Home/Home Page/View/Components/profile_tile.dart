import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

Widget profiletile (BuildContext context ,  ){
  return ListTile(
    leading: Image.asset('images/Ellipse 10.png', height: 51 , width: 51,),
    title: textWidget('Welcome Jason', AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize20, TextAlign.left, TextStyles.ubuntumedium),
  );
}