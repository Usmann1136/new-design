import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:tour_easy2/Module/Listings/View%20Model/complete_job_view_model.dart';

import 'package:tour_easy2/Module/Listings/View/Components/statuswithbadge.dart';


import '../../../Utils/theme/colors.dart';

import '../../../Utils/theme/size.dart';
import '../../Auth/View/Components/app_bar.dart';
import '../../Home/Home Page/View/Components/side_menu.dart';
import '../../Home/View Model/leading_icon_animation.dart';
import '../../Home/Home Page/View/Components/list_job_cards.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';


class CompletedJob extends StatelessWidget {
  const CompletedJob({super.key});

  @override
  Widget build(BuildContext context) {
     final listJobController = Get.put(CompletedJobViewModel());
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
        appBar:PrimaryCustomAppBar(leading: sidemenuicon(context), 
      
    
      titlecolor: AppColor.blackcolor,
      
title: 'Listing',actions: [
  SecondaryLeadIconAnimation(),
  AnimatedbellIcon(),
]) ,
       body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait) {
          return Container(
              height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
         physics: ScrollPhysics(),
        child: Column(children: [
           customsizedbox(context, height: Sizes.size30),
         SizedBox(height: 30,),

         statuswithbadge(context, status: 'Completed', count: '3'),
            
               customsizedbox(context, height: Sizes.size20),
              Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:listJobController.completedjobcards.length ,
           itemBuilder: (context , index){
             return listjobcards(context, 
             
             onTap: listJobController.completedjobcards[index].onTap,
             title1: listJobController.completedjobcards[index].title1.toString(),
              subitle2: listJobController.completedjobcards[index].subitle2.toString(), address: listJobController.completedjobcards[index].address.toString(), time: listJobController.completedjobcards[index].time.toString(), location: listJobController.completedjobcards[index].location.toString(), timer: listJobController.completedjobcards[index].timer.toString(), dollarsign:  listJobController.completedjobcards[index].dollarsign.toString());
           } ),),
               customsizedbox(context, height: Sizes.size30),

      ],),),
          );
        }
        else if(orientation == Orientation.landscape){
          return Container(
              height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
         physics: ScrollPhysics(),
        child: Column(children: [
         customsizedbox(context, height: Sizes.size30),
          statuswithbadge(context, status: 'Completed', count: '3'),
             customsizedbox(context, height: Sizes.size20),
        
             Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:listJobController.completedjobcards.length ,
           itemBuilder: (context , index){
             return listjobcards(context, 
            
             onTap: listJobController.completedjobcards[index].onTap,
             title1: listJobController.completedjobcards[index].title1.toString(),
              subitle2: listJobController.completedjobcards[index].subitle2.toString(), address: listJobController.completedjobcards[index].address.toString(), time: listJobController.completedjobcards[index].time.toString(), location: listJobController.completedjobcards[index].location.toString(), timer: listJobController.completedjobcards[index].timer.toString(), dollarsign:  listJobController.completedjobcards[index].dollarsign.toString());
           } ),),
      
               customsizedbox(context, height: Sizes.size30),

      ],),),
          );
        }
        else {
            return Container();
        }
      }),
    );
  }
}