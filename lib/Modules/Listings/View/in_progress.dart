import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:tour_easy2/Module/Listings/View%20Model/in_progress_view_model.dart';

import 'package:tour_easy2/Module/Listings/View/Components/statuswithbadge.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Utils/theme/size.dart';


import '../../../Utils/theme/colors.dart';

import '../../Auth/View/Components/app_bar.dart';
import '../../Home/Home Page/View/Components/side_menu.dart';
import '../../Home/View Model/leading_icon_animation.dart';
import '../../Home/Home Page/View/Components/list_job_cards.dart';


class InProgressJob extends StatelessWidget {
  const InProgressJob({super.key});

  @override
  Widget build(BuildContext context) {
    final listJobController = Get.put(InProgressJobViewModel());
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      appBar:PrimaryCustomAppBar(leading:sidemenuicon(context), 
      
    
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
           SizedBox(height: 30,),
           customsizedbox(context, height: Sizes.size30),
           statuswithbadge(context, status: 'In Progress', count: '2'),
            customsizedbox(context, height: Sizes.size20),
        
     Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:listJobController.progressjobcards.length ,
           itemBuilder: (context , index){
             return listjobcards(context, 
             
             
             onTap: listJobController.progressjobcards[index].onTap,
             title1: listJobController.progressjobcards[index].title1.toString(),
              subitle2: listJobController.progressjobcards[index].subitle2.toString(), address: listJobController.progressjobcards[index].address.toString(), time: listJobController.progressjobcards[index].time.toString(), location: listJobController.progressjobcards[index].location.toString(), timer: listJobController.progressjobcards[index].timer.toString(), dollarsign:  listJobController.progressjobcards[index].dollarsign.toString());
           } ),),
               customsizedbox(context, height: Sizes.size30),
          
        ]),
      ),
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
            statuswithbadge(context, status: 'In Progress', count: '2'),
             customsizedbox(context, height: Sizes.size20),
            
            Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:listJobController.progressjobcards.length ,
           itemBuilder: (context , index){
             return listjobcards(context, 
            
             onTap: listJobController.progressjobcards[index].onTap,
             title1: listJobController.progressjobcards[index].title1.toString(),
              subitle2: listJobController.progressjobcards[index].subitle2.toString(), address: listJobController.progressjobcards[index].address.toString(), time: listJobController.progressjobcards[index].time.toString(), location: listJobController.progressjobcards[index].location.toString(), timer: listJobController.progressjobcards[index].timer.toString(), dollarsign:  listJobController.progressjobcards[index].dollarsign.toString());
           } ),),
        
           customsizedbox(context, height: Sizes.size30),
        ]),
      ),
          );
        }
        else {
            return Container();
        }
      }),
    );
  }
}