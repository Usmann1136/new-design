import 'package:flutter/material.dart';


import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../../Utils/theme/font_style.dart';

Widget topupamount(BuildContext context , {String? leading='images/visa.png' , String? title='4565*********'}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Column(
      
      children: [
      Align(
        alignment: Alignment.topLeft,
        child: textWidget('Amount', AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize14, TextAlign.left, TextStyles.ubuntumedium)),
    Align(
        alignment: Alignment.topLeft,
        child: textWidget('500 USD', AppColor.blackcolor, TextStyles.fontWeight500, Sizes.size22, TextAlign.left, TextStyles.ubuntumedium)),
 
 customsizedbox(context , height: Sizes.size30),
   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     textWidget('Payment Method', AppColor.blackcolor, TextStyles.fontWeight400, Sizes.size14, TextAlign.left, TextStyles.ubuntumedium),
   
     GestureDetector(
      onTap: (){},
       child: textWidget('Change Card', AppColor.attoureasycolor,
                        
                                      
                         TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.right, TextStyles.ubunturegular ,
                         
                        decorationcolor: AppColor.attoureasycolor,
                        textDecoration: TextDecoration.underline),
     )
                        ],),
                        customsizedbox(context , height: Sizes.size10),
  
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size5),
    child: Row(
      
      children: [
      Image.asset(leading! , height: Sizes.size25, width: Sizes.size40,),
  customsizedbox(context , width: Sizes.size10),
       textWidget(title!, AppColor.blackcolor, TextStyles.fontWeight400, Sizes.size14, TextAlign.left, TextStyles.ubuntumedium), 

      
      ],),
  ),
  
  
   
   
  
    ],),
  );
}