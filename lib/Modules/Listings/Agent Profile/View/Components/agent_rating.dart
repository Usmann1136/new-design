import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../../Utils/theme/font_style.dart';

Widget agentrating (BuildContext context,{String? text='Jack William'} ){
return Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  textWidget(text!, AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize16, TextAlign.center, TextStyles.ubuntumedium),

Row(
mainAxisAlignment: MainAxisAlignment.center,
  children: [
   textWidget('4.9', AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize16, TextAlign.center, TextStyles.ubuntumedium),
   Icon(Icons.star , color: Colors.amber ,size: 18,)
],),

],);
}