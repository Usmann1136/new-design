import 'package:flutter/material.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget orword(BuildContext context){
  return   Align(
    alignment: Alignment.topCenter,
    child: textWidget('OR', AppColor.blackcolor, TextStyles.fontWeight300, TextStyles.fontSize16, TextAlign.right, TextStyles.ubuntulight));
}