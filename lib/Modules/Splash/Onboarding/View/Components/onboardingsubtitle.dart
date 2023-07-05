import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../View/Components/splash_title.dart';

Widget onboardingsubtitle(BuildContext context , {required String subtitle}){
  return    Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget(subtitle, AppColor.blackcolor,FontWeight.w400 ,  TextStyles.fontSize24, TextAlign.left, TextStyles.ubunturegular)),
        );
}