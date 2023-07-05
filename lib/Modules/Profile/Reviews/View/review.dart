import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Listings/Agent%20Profile/View/Components/user_reviews.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/list_status.dart';
import 'package:tour_easy2/Module/Profile/Reviews/View%20Model/user_review_model.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/theme/size.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userreviewcontroller = Get.put(UserReviewViewModel());
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation(), 
      title: 'Reviews', fontSize: TextStyles.fontSize20, titlecolor: AppColor.blackcolor,),

    body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
         height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        
        physics: ScrollPhysics(),
        child: Column(
        
          children: [
           customsizedbox(context, height: Sizes.size30),
           liststatus(text: 'Reviews'),
       customsizedbox(context, height: Sizes.size20),
           Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return customsizedbox(context ,height: Sizes.size20 );
            },
          
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
           itemCount:userreviewcontroller.userreviewcard.length ,
           itemBuilder: (context , index){
             return reviewtile(context, image: userreviewcontroller.userreviewcard[index].reviewerimage.toString(), text: userreviewcontroller.userreviewcard[index].reviewername.toString(), text2: userreviewcontroller.userreviewcard[index].date.toString());
           } ),), 
      customsizedbox(context, height: Sizes.size40),
     
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
  
      customsizedbox(context, height: Sizes.size30),
           liststatus(text: 'Reviews'),
       customsizedbox(context, height: Sizes.size20),
           Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return customsizedbox(context ,height: Sizes.size20 );
            },
          
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
           itemCount:userreviewcontroller.userreviewcard.length ,
           itemBuilder: (context , index){
             return reviewtile(context, image: userreviewcontroller.userreviewcard[index].reviewerimage.toString(), text: userreviewcontroller.userreviewcard[index].reviewername.toString(), text2: userreviewcontroller.userreviewcard[index].date.toString());
           } ),), 
      customsizedbox(context, height: Sizes.size40),
     
        
               
            
       
        
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