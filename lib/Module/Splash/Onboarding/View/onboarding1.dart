import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/floating_button.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/routes/routes.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/font_style.dart';
import 'Components/dot_indicator.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

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
          child: onboardingimagewidget(context, 'images/onboarding1.png', MediaQuery.of(context).size.width*1),
        ),
      
        SizedBox(height: 35,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget('Get Assistance  from other agents', AppColor.blackcolor,FontWeight.w400 , 12, TextAlign.left, TextStyles.ubunturegular)),
        ),
        SizedBox(height: 11,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget('Be a Tour Ease agent and get assistance from your fellow agents', AppColor.blackcolor,FontWeight.w400 , 24, TextAlign.left, TextStyles.ubunturegular)),
        ),
          SizedBox(height: 43,),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                  alignment: Alignment.topLeft,
                child: dotsindicator(context , 0)),
            
            ),
               SizedBox(height: 83,),
        ],),
      ) ,
      ),
     
    );
  }
}