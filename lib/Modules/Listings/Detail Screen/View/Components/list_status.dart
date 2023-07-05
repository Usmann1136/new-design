import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../../Splash/View/Components/splash_title.dart';

Widget liststatus( {required String text}){
  return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
                child:   Align(
                  alignment: Alignment.topLeft,
                  child: textWidget(text, AppColor.blackcolor,TextStyles.fontWeight500, TextStyles.fontSize18, TextAlign.left , TextStyles.ubuntumedium)),
              );
}