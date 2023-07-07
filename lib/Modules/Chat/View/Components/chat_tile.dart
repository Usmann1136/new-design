import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Home/Home%20Page/View/Components/job_badge.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/theme/size.dart';

Widget chattile (BuildContext context,{required String messangerimage ,


 required String messagecount , required String messangername ,
 VoidCallback? onTap,
   Color? messagecountcolor,  required String message}){
  return ListTile(
    onTap: onTap,
    leading: onboardingimagewidget(context, messangerimage,  width:48, height: 48,
    ),
    title: textWidget(messangername, AppColor.blackcolor, TextStyles.fontWeight400,  TextStyles.fontSize16, TextAlign.left, TextStyles.ubuntumedium),
  subtitle:textWidget(message, AppColor.attoureasycolor, TextStyles.fontWeight400,  Sizes.size11, TextAlign.left, TextStyles.ubuntumedium) ,
   trailing: Column(children: [
   textWidget('9:06 am', AppColor.blackcolor, TextStyles.fontWeight400,  Sizes.size11, TextAlign.left, TextStyles.ubunturegular),
   jobbadge(context ,  text: messagecount , badgecolor: messagecountcolor ),
   
   ],),
  );
}