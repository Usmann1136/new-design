import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/option_button.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';


import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/colors.dart';

import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import 'Components/registration_subtitle.dart';
import 'Components/registration_title.dart';

class Pending2Screen extends StatelessWidget {
  const Pending2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor:AppColor.scaffoldcolor,
 appBar:CustomAppBar( leading: LeadingIconAnimation() ),
body: OrientationBuilder(builder: (context , orientation){
  if(orientation== Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(children: [
            
            customsizedbox( context , height: Sizes.size49),
             registrationtitle(context, text: 'Register yourself as Real estate agent'),
                  customsizedbox( context , height: Sizes.size12),
            
                  registrationsubtitle(context, text: 'Answer these questions about your license to continue'),
                
              
                     customsizedbox( context , height: Sizes.size35),
                      
                     textfieldtitle(context, title: 'Are your licensed in Texas?'),
                     
                     customsizedbox( context , height: Sizes.size20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(children: [optionbutton(context, 
                       bordercolor: AppColor.blackcolor ,
                      onTap: (){},
                      color: AppColor.fourthblackcolor, boxcolor: AppColor.scaffoldcolor, text: 'No'),
                        customsizedbox( context ,width:  Sizes.size15,),
                      optionbutton(context, color: AppColor.scaffoldcolor,
                        onTap: (){},
                        bordercolor: AppColor.transparentcolor ,
                       boxcolor: AppColor.splashtitlecolor, text: 'Yes')
                      ],),
                    ),
                    customsizedbox( context ,height:  Sizes.size46,),
                  
                       textfieldtitle(context, title: 'Is your license active or not?'),
                    customsizedbox( context ,height:  Sizes.size20,),
                    
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(children: [optionbutton(context, 
                        bordercolor: AppColor.blackcolor ,
                        onTap: (){},
                      color: AppColor.fourthblackcolor, boxcolor: AppColor.scaffoldcolor, text: 'No'),
                      customsizedbox( context ,width:  Sizes.size15,),
                      optionbutton(context, color: AppColor.scaffoldcolor,
                      bordercolor: AppColor.transparentcolor ,
                      
                      onTap: (){},
                       boxcolor: AppColor.splashtitlecolor, text: 'Yes')
                      ],),
                    ),
                  customsizedbox( context ,height:  Sizes.size130,),
                     primarybutton( context , text: 'Continue' , onTap: (){
                       Get.toNamed(RoutesName.pendingthreescreen);
                     }),
                     customsizedbox( context ,height:  Sizes.size80,)
        ],),
      ),
    );
  }
  else if(orientation== Orientation.landscape){
     return Container(
      height: MediaQuery.sizeOf(context).height*1,
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(children: [
        
            customsizedbox( context ,height:  Sizes.size49,),
             registrationtitle(context, text: 'Register yourself as Real estate agent'),
                 
                  customsizedbox( context ,height:  Sizes.size12,),
                  registrationsubtitle(context, text: 'Answer these questions about your license to continue'),
                
              
                    
                    customsizedbox( context ,height:  Sizes.size35,),
                  
                  
                      textfieldtitle(context, title: 'Are your licensed in Texas?'),
                     
                     customsizedbox( context ,height:  Sizes.size20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(children: [optionbutton(context, 
                       bordercolor: AppColor.blackcolor ,
                      onTap: (){},
                      color: AppColor.fourthblackcolor, boxcolor: AppColor.scaffoldcolor, text: 'No'),
                       SizedBox(width: 15,),
                      optionbutton(context, color: AppColor.scaffoldcolor,
                        onTap: (){},
                        bordercolor: AppColor.transparentcolor ,
                       boxcolor: AppColor.splashtitlecolor, text: 'Yes')
                      ],),
                    ),
                    customsizedbox( context ,height:  Sizes.size46,),
                       textfieldtitle(context, title: 'Is your license active or not?'),
                     
                    customsizedbox( context ,height:  Sizes.size20,),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(children: [optionbutton(context, 
                        bordercolor: AppColor.blackcolor ,
                        onTap: (){},
                      color: AppColor.fourthblackcolor, boxcolor: AppColor.scaffoldcolor, text: 'No'),
                      customsizedbox( context ,width:  Sizes.size15,),
                      optionbutton(context, color: AppColor.scaffoldcolor,
                      bordercolor: AppColor.transparentcolor ,
                      
                      onTap: (){},
                       boxcolor: AppColor.splashtitlecolor, text: 'Yes')
                      ],),
                    ),
                    customsizedbox( context ,height:  Sizes.size130,),
                  
                     primarybutton( context , text: 'Continue' , onTap: (){
                      Get.toNamed(RoutesName.pendingthreescreen);
                     }),
                     customsizedbox( context ,height:  Sizes.size80,),
        ],),
      ),
    );
  }
  else{
 return Container();
  }
}),
    );
  }
}