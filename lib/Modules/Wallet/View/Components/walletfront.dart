import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../Utils/theme/colors.dart';

Widget walletfront (BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Container(
        width: MediaQuery.sizeOf(context).width*1,
          decoration: BoxDecoration(
            
            boxShadow: [
              BoxShadow(
                color:AppColor.secondaryblackcolor.withOpacity(.1),
                offset: Offset(0, 1),
                blurRadius: 8
              )
            ],
            color: AppColor.scaffoldcolor, borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Sizes.size18 ),
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      textWidget('Balance', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular),
                    SizedBox(height: Sizes.size10,),
                     textWidget('\$3500', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize24, TextAlign.left, TextStyles.ubuntumedium),
                  
                  SizedBox(height: Sizes.size30,),
                     Row(children: [GestureDetector(
                      onTap: (){
                        Get.toNamed(RoutesName.amountscreen);
                      },
                       child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.splashtitlecolor,
                          borderRadius: BorderRadius.circular(Sizes.size20)
                        ),
                     height: Sizes.size21,
                     width: Sizes.size58,
                         child: Center(
                           child: textWidget('Top Up', AppColor.scaffoldcolor,
                               FontWeight.w400, TextStyles.fontSize10 , TextAlign.center, TextStyles.ubunturegular),
                         ),
                       ),
                     ),
                      SizedBox(width: Sizes.size5,),
                      underlinetext(context, text: 'Withdraw' ,
                      color: AppColor.splashtitlecolor,
                      fontsize: TextStyles.fontSize10  ,decorationcolor:AppColor.splashtitlecolor.withOpacity(.3) ),
                       
                    
                                  
                    
                      ],),
                    ],),
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Sizes.size20),
                        ),
                        child: onboardingimagewidget(context, 'images/Ellipse 4 (1).png', 176)),
                         Positioned(
                          top: Sizes.size20 ,
                          right: Sizes.size15,
                          child: onboardingimagewidget(context, 'images/Wallet-pana 1.png', 190)),
                    ],
                  ),
                ],
              ),
            ],
          ),
    ),
  );
}