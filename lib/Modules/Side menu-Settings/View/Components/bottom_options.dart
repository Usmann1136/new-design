import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget bottomsheetoptions(BuildContext context , {required String bottomsheetoptions ,
VoidCallback? onTap,
 Color? color= AppColor.blackcolor}){
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
      child: Align(
        alignment: Alignment.topCenter,
        child: textWidget(bottomsheetoptions, color, TextStyles.fontWeight400, TextStyles.fontSize16, TextAlign.center, TextStyles.ubuntumedium)),
    ));
}