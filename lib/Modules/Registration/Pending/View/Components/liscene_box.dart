import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../../Utils/theme/size.dart';

Widget liscenceBox(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Container(
      width: MediaQuery.sizeOf(context).width*1,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(Sizes.size20),
        border: Border.all(color: AppColor.activedotcolor)
      
      
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.size70),
        child: Center(child: underlinetext(context, text: 'Upload here' , decorationcolor: AppColor.splashtitlecolor , color: AppColor.splashtitlecolor))
      ),
    ),
  );
}