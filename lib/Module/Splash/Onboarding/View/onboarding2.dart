import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Utils/routes/routes.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import 'Components/dot_indicator.dart';
import 'Components/floating_button.dart';
import 'Components/onboarding_images.dart';
import '../../View/Components/splash_title.dart';


class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

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
            child: onboardingimagewidget(context, 'images/onboarding2.png', MediaQuery.of(context).size.width*1)),
        ),
      
        SizedBox(height: 35,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget('Handle other client while your property showing to client', AppColor.blackcolor,FontWeight.w400 , 12, TextAlign.left, TextStyles.ubunturegular)),
        ),
        SizedBox(height: 11,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
        alignment: Alignment.topLeft,
        child: textWidget('Schedule your property showing meeting with help of Tour Ease', AppColor.blackcolor,FontWeight.w400 , 24, TextAlign.left, TextStyles.ubunturegular)),
        ),
          SizedBox(height: 43,),
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
                alignment: Alignment.topLeft,
              child: dotsindicator(context , 1)),
          
          ),
             SizedBox(height: 83,),
        ],),
      ) ,
      ),
     
    );
  }
}