import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../../Utils/theme/size.dart';

Widget  jobbadge(BuildContext context,{String? text ='3'}){
  return Container(
    height: Sizes.size23,
    width: Sizes.size17,
    decoration: BoxDecoration(color: AppColor.splashtitlecolor , shape: BoxShape.circle),
    child: Center(child: textWidget(text!, AppColor.scaffoldcolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.center, TextStyles.ubuntulight)),
  );
}