import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

Widget notiftile(BuildContext context ,{required String title , required String image}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: GestureDetector(
      onTap: (){
        Get.toNamed(RoutesName.feedbackscreen);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.bottombarcolor,
          borderRadius: BorderRadius.circular(Sizes.size20)
        ),
        width: MediaQuery.sizeOf(context).width*1,
        child: ListTile(leading: Image.asset(image , height: Sizes.size35, width: Sizes.size35 ,),
        
        title: textWidget(title, AppColor.thirdblackcolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.left, TextStyles.ubunturegular),
        subtitle:Align(
          alignment: Alignment.topRight,
          child: textWidget('3h . 23 December 2022', AppColor.thirdblackcolor, TextStyles.fontWeight300, TextStyles.fontSize10, TextAlign.left, TextStyles.ubuntulight)), 
        ),
      ),
    ),
  );
}