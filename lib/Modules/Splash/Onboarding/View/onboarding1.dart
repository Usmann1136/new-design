import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboadingtitle.dart';

import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboardingsubtitle.dart';


import 'package:tour_easy2/Utils/theme/colors.dart';



import '../../../../Utils/theme/size.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import 'Components/dot_indicator.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.scaffoldcolor,
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation ==Orientation.portrait){
          return  Container(height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           customsizedbox(context ,height:Sizes.size55 ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: onboardingimagewidget(context, 'images/onboarding1.png', MediaQuery.of(context).size.width*1),
        ),
      
        
 customsizedbox(context ,height:Sizes.size35 ),
      onboardingtitle(context, title: 'Get Assistance  from other agents'),
      
         customsizedbox(context ,height:Sizes.size11 ),
        onboardingsubtitle(context, subtitle: 'Be a Tour Ease agent and get assistance from your fellow agents'),
        customsizedbox(context ,height:Sizes.size43 ),
      
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                  alignment: Alignment.topLeft,
                child: dotsindicator(context , 0)),
            
            ),
               customsizedbox(context ,height:Sizes.size83 ),
        ],),
      ) ,
      );
        }
        else if(orientation == Orientation.landscape){
          return  Container(height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
    
           customsizedbox(context ,height:Sizes.size55 ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: onboardingimagewidget(context, 'images/onboarding1.png', MediaQuery.of(context).size.width*1),
        ),
      
         customsizedbox(context ,height:Sizes.size35 ),
              onboardingtitle(context, title: 'Get Assistance  from other agents'),
        SizedBox(height: 11,),
        onboardingsubtitle(context, subtitle: 'Be a Tour Ease agent and get assistance from your fellow agents'),

      
      
           customsizedbox(context ,height:Sizes.size43 ),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                  alignment: Alignment.topLeft,
                child: dotsindicator(context , 0)),
            
            ),
                customsizedbox(context ,height:Sizes.size83 ),
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