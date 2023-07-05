import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';

import 'package:tour_easy2/Module/Listings/Detail%20Screen/View%20Model/agent_job_view_model.dart';
import 'package:tour_easy2/Module/Listings/Agent%20Profile/View/Components/agent_card.dart';
import 'package:tour_easy2/Module/Listings/Agent%20Profile/View/Components/agent_rating.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/list_status.dart';
import 'package:tour_easy2/Module/Listings/Agent%20Profile/View/Components/user_reviews.dart';


import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/app_bar.dart';
import '../../../Home/View Model/leading_icon_animation.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';

class AgentProfileScreen extends StatelessWidget {
  const AgentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final agentcardcontroller = Get.put(AgentJobViewModel());

    return Scaffold(
appBar: PrimaryCustomAppBar(leading: LeadingIconAnimation(),  
      
    
      titlecolor: AppColor.blackcolor,
title: 'Agent Profile',actions: [
  
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
          child: onboardingimagewidget(context, 'images/Frame 48095792.png', 96)),
           customsizedbox(context, height: Sizes.size10),
    
        agentrating(context),
      
 customsizedbox(context, height: Sizes.size10),
        liststatus(text:'Recent Jobs'),
    
         customsizedbox(context, height: Sizes.size10),
         Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 20,);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:agentcardcontroller.agentjobcards.length ,
           itemBuilder: (context , index){
             return agentjobcards(context, 
            pasttime: agentcardcontroller.agentjobcards[index].pasttime.toString(),
             onTap: agentcardcontroller.agentjobcards[index].onTap,
             title1: agentcardcontroller.agentjobcards[index].title1.toString(),
              subitle2: agentcardcontroller.agentjobcards[index].subitle2.toString(), address: agentcardcontroller.agentjobcards[index].address.toString(), time: agentcardcontroller.agentjobcards[index].time.toString(), location: agentcardcontroller.agentjobcards[index].location.toString(), timer: agentcardcontroller.agentjobcards[index].timer.toString(), dollarsign:  agentcardcontroller.agentjobcards[index].dollarsign.toString());
           } ),),
       customsizedbox(context, height: Sizes.size20),
         liststatus(text:'Reviews'),
       customsizedbox(context, height: Sizes.size20),
         reviewtile(context, image: 'images/Ellipse 12.png', text: 'Ralph Edwards', text2: '12/10/2022'),
  
           customsizedbox(context, height: Sizes.size20),
         reviewtile(context, image: 'images/Ellipse  1.png', text: 'Jane Cooper', text2: '1/15/2022'),
        
 customsizedbox(context, height: Sizes.size50),
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
          child: onboardingimagewidget(context, 'images/Frame 48095792.png', 96)),
        
            customsizedbox(context, height: Sizes.size10),
        agentrating(context  ),
         customsizedbox(context, height: Sizes.size10),
      
        liststatus(text:'Recent Jobs'),
         customsizedbox(context, height: Sizes.size10),
        
          Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:agentcardcontroller.agentjobcards.length ,
           itemBuilder: (context , index){
             return agentjobcards(context, 
            pasttime: agentcardcontroller.agentjobcards[index].pasttime.toString(),
             onTap: agentcardcontroller.agentjobcards[index].onTap,
             title1: agentcardcontroller.agentjobcards[index].title1.toString(),
              subitle2: agentcardcontroller.agentjobcards[index].subitle2.toString(), address: agentcardcontroller.agentjobcards[index].address.toString(), time: agentcardcontroller.agentjobcards[index].time.toString(), location: agentcardcontroller.agentjobcards[index].location.toString(), timer: agentcardcontroller.agentjobcards[index].timer.toString(), dollarsign:  agentcardcontroller.agentjobcards[index].dollarsign.toString());
           } ),),
          customsizedbox(context, height: Sizes.size20),
         liststatus(text:'Reviews'),
          customsizedbox(context, height: Sizes.size20),
         
         reviewtile(context, image: 'images/Ellipse 12.png', text: 'Ralph Edwards', text2: '12/10/2022'),
          customsizedbox(context, height: Sizes.size20),

         reviewtile(context, image: 'images/Ellipse  1.png', text: 'Jane Cooper', text2: '1/15/2022'),
    
 customsizedbox(context, height: Sizes.size50),
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