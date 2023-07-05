
import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/dot_indicator.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboadingtitle.dart';

import '../../../../Utils/theme/colors.dart';


import '../../../../Utils/theme/size.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import 'Components/onboarding_images.dart';

import 'Components/onboardingsubtitle.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.scaffoldcolor,
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return  Container(height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          customsizedbox(context ,height:Sizes.size55 ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: onboardingimagewidget(context, 'images/onboarding3.png', MediaQuery.of(context).size.width*1)),
        ),
      
        customsizedbox(context ,height:Sizes.size35 ),
        onboardingtitle(context, title: 'Earn money to be a showing agent'),

      customsizedbox(context ,height:Sizes.size11 ),
          onboardingsubtitle(context, subtitle: 'Schedule your property showing meeting with help of Tour Ease'),

        customsizedbox(context ,height:Sizes.size48 ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Align(
              alignment: Alignment.topLeft,
            child: dotsindicator(context , 2)),
        
        ),
           customsizedbox(context ,height:Sizes.size48 )
        ],),

      ) ,
      );
        }
        else if(orientation == Orientation.portrait){
          return  Container(height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          customsizedbox(context ,height:Sizes.size55 ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: onboardingimagewidget(context, 'images/onboarding3.png', MediaQuery.of(context).size.width*1)),
        ),
      
        customsizedbox(context ,height:Sizes.size35 ),
          onboardingtitle(context, title: 'Earn money to be a showing agent'),
       
        customsizedbox(context ,height:Sizes.size11 ),
          onboardingsubtitle(context, subtitle: 'Schedule your property showing meeting with help of Tour Ease'),
        
      customsizedbox(context ,height:Sizes.size48 ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Align(
              alignment: Alignment.topLeft,
            child: dotsindicator(context , 2)),
        
        ),
           customsizedbox(context ,height:Sizes.size48 )
        ],),

      ) ,
      );
        }
        else {
          return Container();
        }
      })
      
    ); 
  }
}