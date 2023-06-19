import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/dot_indicator.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import 'Components/floating_button.dart';
import 'Components/onboarding_images.dart';
import '../../View/Components/splash_title.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.scaffoldcolor,
      body:  Container(height: MediaQuery.of(context).size.height*1,
      
      width: MediaQuery.of(context).size.width*1,
      child: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(height: 55,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: onboardingimagewidget(context, 'images/onboarding3.png', MediaQuery.of(context).size.width*1)),
        ),
      
        SizedBox(height: 35,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget('Earn money to be a showing agent', AppColor.blackcolor,FontWeight.w400 , 12, TextAlign.left, TextStyles.ubunturegular)),
        ),
        SizedBox(height: 11,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget('Schedule your property showing meeting with help of Tour Ease', AppColor.blackcolor,FontWeight.w400 , 24, TextAlign.left, TextStyles.ubunturegular)),
        ),
        SizedBox(height: 48,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Align(
              alignment: Alignment.topLeft,
            child: dotsindicator(context , 2)),
        
        ),
           SizedBox(height: 83,),
        ],),

      ) ,
      ),
      
    ); 
  }
}