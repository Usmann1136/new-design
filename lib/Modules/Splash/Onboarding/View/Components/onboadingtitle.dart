import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../View/Components/splash_title.dart';

Widget onboardingtitle(BuildContext context , {required String title}){
  return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget(title, AppColor.blackcolor,TextStyles.fontWeight400 , TextStyles.fontSize12, TextAlign.left, TextStyles.ubunturegular)),
        );
}