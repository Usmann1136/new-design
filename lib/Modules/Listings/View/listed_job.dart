import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Home/Home%20Page/View%20Model/list_job_view_model.dart';
import 'package:tour_easy2/Module/Home/Home%20Page/View/Components/list_job_cards.dart';

import 'package:tour_easy2/Module/Listings/View/Components/statuswithbadge.dart';


import '../../../Utils/theme/colors.dart';

import '../../../Utils/theme/size.dart';
import '../../Home/Home Page/View/Components/side_menu.dart';
import '../../Home/View Model/leading_icon_animation.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';


class ListedJob extends StatelessWidget {
  const ListedJob({super.key});

  @override
  Widget build(BuildContext context) {
    final listJobController = Get.put(ListJobViewModel());
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
          
          customsizedbox( context ,height:  Sizes.size30,),
           statuswithbadge(context, status: 'Listed Jobs', count: '3'),

             customsizedbox( context ,height:  Sizes.size20,),
            Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:listJobController.listjobcard.length ,
           itemBuilder: (context , index){
             return listjobcards(context, 
            
             onTap: listJobController.listjobcard[index].onTap,
             title1: listJobController.listjobcard[index].title1.toString(),
              subitle2: listJobController.listjobcard[index].subitle2.toString(), address: listJobController.listjobcard[index].address.toString(), time: listJobController.listjobcard[index].time.toString(), location: listJobController.listjobcard[index].location.toString(), timer: listJobController.listjobcard[index].timer.toString(), dollarsign:  listJobController.listjobcard[index].dollarsign.toString());
           } ),),
            customsizedbox( context ,height:  Sizes.size50,),
      
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
      
           customsizedbox( context ,height:  Sizes.size30,),
          statuswithbadge(context, status: 'Listed Jobs', count: '3'),
          
             customsizedbox( context ,height:  Sizes.size20,),
             Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:listJobController.listjobcard.length ,
           itemBuilder: (context , index){
             return listjobcards(context, 
            
             onTap: listJobController.listjobcard[index].onTap,
             title1: listJobController.listjobcard[index].title1.toString(),
              subitle2: listJobController.listjobcard[index].subitle2.toString(), address: listJobController.listjobcard[index].address.toString(), time: listJobController.listjobcard[index].time.toString(), location: listJobController.listjobcard[index].location.toString(), timer: listJobController.listjobcard[index].timer.toString(), dollarsign:  listJobController.listjobcard[index].dollarsign.toString());
           } ),),
             customsizedbox( context ,height:  Sizes.size50,),
      
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