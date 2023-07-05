import 'package:flutter/material.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget textfieldtitle(BuildContext context,{ required  String title}){
  return     Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: textWidget(title, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14,TextAlign.left, TextStyles.ubunturegular)),
                );
}