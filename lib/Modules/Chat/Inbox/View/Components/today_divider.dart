import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../../Utils/theme/size.dart';

Widget todaydivider(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
  
        customsizedbox(context, width: Sizes.size62 ,child: Divider( color: AppColor.blackcolor,)),
        customsizedbox(context , width: Sizes.size3),
        textWidget('Today', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.center, TextStyles.ubuntulight),
    customsizedbox(context , width: Sizes.size3),
      customsizedbox(context, width: Sizes.size62  ,child: Divider( color: AppColor.blackcolor,))
  ],);
}