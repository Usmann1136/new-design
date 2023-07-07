import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../Splash/View/Components/splash_title.dart';



Widget underlinetext(BuildContext context ,{required String text ,

double? fontsize = TextStyles.fontSize14,
Color? color = AppColor.blackcolor,
Color? decorationcolor = AppColor.blackcolor,
  VoidCallback? onTap}){
  return  GestureDetector(
    onTap: onTap,
    child: textWidget(text, color ,TextStyles.fontWeight400, fontsize, TextAlign.center, TextStyles.ubunturegular ,decorationcolor: decorationcolor ,textDecoration: TextDecoration.underline ));
}