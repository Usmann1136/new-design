import 'package:flutter/material.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget continuewith (BuildContext context){
  return Align(
    alignment: Alignment.topCenter,
    child: textWidget('Continue with', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.right, TextStyles.ubunturegular));
}