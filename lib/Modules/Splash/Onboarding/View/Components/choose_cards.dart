

import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../View/Components/splash_title.dart';

Widget choosecards (String text , double width  , VoidCallback onTap){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: GestureDetector(
    onTap: onTap ,
    child:   Container( 
    
      width: width,
    
      decoration: BoxDecoration( 
    
        
    
        border: Border.all(color: AppColor.blackcolor),
    
        borderRadius: BorderRadius.circular(20),
    
      
    
      ),
    
      child: Padding(
        padding: const EdgeInsets.only(top: 40 , bottom: 40),
        child: Center(child: textWidget(text, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14,TextAlign.center,TextStyles.ubunturegular)),
      ),),
  ),
  );
}