import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';
import 'package:tour_easy2/Module/Listings/Agent%20Profile/View/Components/agent_rating.dart';
import 'package:tour_easy2/Module/Profile/View%20Model/profile_options_view_model.dart';
import 'package:tour_easy2/Module/Profile/View/Components/profile_options.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/size.dart';
import '../../Auth/View/Components/app_bar.dart';
import '../../Home/Home Page/View/Components/side_menu.dart';

import '../../Home/View Model/leading_icon_animation.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../Splash/Onboarding/View/Components/onboarding_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileoptionscontroller = Get.put(ProfileOptionsViewModel());
    return Scaffold(
       appBar:PrimaryCustomAppBar(leading:sidemenuicon(context), titlecolor: AppColor.blackcolor,
title: 'Profile',actions: [
  SecondaryLeadIconAnimation(),
  AnimatedbellIcon(),
]) , 
body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
         height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        
        physics: ScrollPhysics(),
        child: Column(
        
          children: [
           customsizedbox(context, height: Sizes.size35),
        Align(
          alignment: Alignment.topCenter,
          child: onboardingimagewidget(context, 'images/Ellipse 10.png', 96)),
           customsizedbox(context, height: Sizes.size10),
    agentrating(context ,text: 'Jason Mike'),
      customsizedbox(context, height: Sizes.size10),
    underlinetext(context, text: 'Edit Profile' ,
    onTap: (){
      Get.toNamed(RoutesName.editprofilescreen);
    },
     color: AppColor.splashtitlecolor , decorationcolor: AppColor.splashtitlecolor),
     customsizedbox(context, height: Sizes.size20),
     
           Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return customsizedbox(context ,height: Sizes.size10 );
            },
          
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
           itemCount:profileoptionscontroller.profileoptionscard.length ,
           itemBuilder: (context , index){
             return profileoption(context, profileoptions: profileoptionscontroller.profileoptionscard[index].profileoption.toString(),
             onTap: profileoptionscontroller.profileoptionscard[index].onTap,
             
             
             );
           } ),),
      customsizedbox(context, height: Sizes.size30),
     
            ],),
      
      
      ),
    

    );
  }
  else if(orientation == Orientation.landscape){
      return Container(
         height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        
        physics: ScrollPhysics(),
        child: Column(
        
          children: [
   customsizedbox(context, height: Sizes.size35),
        Align(
          alignment: Alignment.topCenter,
          child: onboardingimagewidget(context, 'images/Ellipse 10.png', 96)),
           customsizedbox(context, height: Sizes.size10),
    agentrating(context ,text: 'Jason Mike'),
      customsizedbox(context, height: Sizes.size10),
    underlinetext(context, text: 'Edit Profile' ,
    onTap: (){
      Get.toNamed(RoutesName.editprofilescreen);
    },
     color: AppColor.splashtitlecolor , decorationcolor: AppColor.splashtitlecolor),
     customsizedbox(context, height: Sizes.size20),
     
           Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return customsizedbox(context ,height: Sizes.size10 );
            },
          
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
           itemCount:profileoptionscontroller.profileoptionscard.length ,
           itemBuilder: (context , index){
             return profileoption(context, profileoptions: profileoptionscontroller.profileoptionscard[index].profileoption.toString(),
             onTap: profileoptionscontroller.profileoptionscard[index].onTap,
             
             
             );
           } ),),
      customsizedbox(context, height: Sizes.size30),            
            
       
        
          ]
        )
    

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