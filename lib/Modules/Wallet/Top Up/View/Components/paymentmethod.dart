import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../../Utils/theme/colors.dart';

Widget paymentmethod(BuildContext context ,{required String title ,required String leading,  VoidCallback? onTap }){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
         decoration: BoxDecoration(
                
                boxShadow: [
                  BoxShadow(
                    color:AppColor.secondaryblackcolor.withOpacity(.1),
                    offset: Offset(0, 1),
                    blurRadius: 8
                  )
                ],
                color: AppColor.scaffoldcolor, borderRadius: BorderRadius.circular(Sizes.size20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size10),
                child: ListTile(
                  
                  leading: 
                     Image.asset(leading ,height: Sizes.size25, width: Sizes.size35, ),
                  
                  
                  title: textWidget(title, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubuntumedium),
                
                trailing: Icon(Icons.chevron_right_outlined , color: AppColor.blackcolor, size: 22,),
                  ),
              ),
      ),
    ),
  );
}