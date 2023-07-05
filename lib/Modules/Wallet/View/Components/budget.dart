import 'package:flutter/material.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget totalbudget (BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Column(
      
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: textWidget('Budget', AppColor.budgetcolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.left, TextStyles.ubunturegular)),
         Align(
          
           alignment: Alignment.topLeft,
          child: textWidget('5700 USD', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize16, TextAlign.left, TextStyles.ubunturegular)),
      ],),
  );
}