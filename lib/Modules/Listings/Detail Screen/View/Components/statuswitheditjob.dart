import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../../Splash/View/Components/splash_title.dart';

Widget statuswitheditjob(BuildContext context){
  return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                
                  textWidget('Listed Job', AppColor.blackcolor,TextStyles.fontWeight500, TextStyles.fontSize18, TextAlign.left , TextStyles.ubuntumedium),
                
                  textWidget('Edit Job', AppColor.splashtitlecolor,
                  
                
                   TextStyles.fontWeight500, TextStyles.fontSize14, TextAlign.right, TextStyles.ubunturegular ,
                   
                  decorationcolor: AppColor.splashtitlecolor.withOpacity(.3),
                    textDecoration: TextDecoration.underline)
            
                ],),
              );
}