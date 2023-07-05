import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget forgotpassword (BuildContext context){
  return   Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topRight,
  
        child: GestureDetector(
          onTap: (){
Get.toNamed(RoutesName.enteremailaddresscreen);
          },
          child: textWidget('Forgot Password?', AppColor.inactivedotcolor, TextStyles.fontWeight400, 
          
          
          TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular , textDecoration: TextDecoration.underline , 
          decorationcolor: AppColor.inactivedotcolor,
          )))
  
     );
}