import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/font_style.dart';

PreferredSizeWidget secondaryappbar(BuildContext context ,  {VoidCallback? onPressed}   ){
return AppBar(backgroundColor: AppColor.scaffoldcolor,
elevation: 0,

leading: IconButton(onPressed: (){
Get.back();
}, icon: Icon(Icons.chevron_left , color: AppColor.blackcolor,)),
title: textWidget('Tour Ease', AppColor.splashtitlecolor, TextStyles.fontWeight500, TextStyles.fontSize24
, TextAlign.center, TextStyles.ubuntumedium),
centerTitle: true,

);
}