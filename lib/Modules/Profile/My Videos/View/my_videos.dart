
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';

import 'package:tour_easy2/Module/Profile/My%20Videos/View%20Model/video_tile_view_model.dart';
import 'package:tour_easy2/Module/Profile/My%20Videos/View/Components/my_videos_tile.dart';
import 'package:tour_easy2/Module/Profile/My%20Videos/View/Components/videotile.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/colors.dart';
import '../../../Auth/View/Components/app_bar.dart';
import '../../../Home/Home Page/View/Components/side_menu.dart';

import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';

class MyVideosScreen extends StatelessWidget {
  const MyVideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final videotilecontroller = Get.put(VideoTileViewModel());
    return Scaffold(
        appBar:PrimaryCustomAppBar(leading:sidemenuicon(context), titlecolor: AppColor.blackcolor,
title: 'Profile',actions: [
  Padding(
    padding: const EdgeInsets.only(right: Sizes.size10),
    child: underlinetext(context, text: 'Add Video' , onTap: (){
      Get.toNamed(RoutesName.addvideoscreen);
    } ,
     color: AppColor.splashtitlecolor , decorationcolor: AppColor.splashtitlecolor),
  ),

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
            customsizedbox(context ,height: Sizes.size30 ),
          myvideotile(context),
          customsizedbox(context ,height: Sizes.size20 ),
          Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return customsizedbox(context ,height: Sizes.size20 );
            },
          
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
           itemCount:videotilecontroller.videotilecard.length ,
           itemBuilder: (context , index){
             return  videotile(context, tileimage:videotilecontroller.videotilecard[index].tileimage.toString() );
           } ),),
             customsizedbox(context ,height: Sizes.size40 ),
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
    customsizedbox(context ,height: Sizes.size30 ),
          myvideotile(context),
          customsizedbox(context ,height: Sizes.size20 ),
          Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return customsizedbox(context ,height: Sizes.size20 );
            },
          
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
           itemCount:videotilecontroller.videotilecard.length ,
           itemBuilder: (context , index){
             return  videotile(context, tileimage:videotilecontroller.videotilecard[index].tileimage.toString() );
           } ),),
             customsizedbox(context ,height: Sizes.size40 ),
        
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