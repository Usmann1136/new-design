import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../../Splash/View/Components/splash_title.dart';

Widget registrationtitle(BuildContext context  , { required String text , double? fontsize = TextStyles.fontSize24}){
  return                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: textWidget(text, AppColor.blackcolor, TextStyles.fontWeight500, fontsize,TextAlign.left, TextStyles.ubuntumedium)),
                  );
}