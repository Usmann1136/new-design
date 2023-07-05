import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Add%20Listing/Brief/View/Components/brief_text_field.dart';
import 'package:tour_easy2/Module/Auth/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Home/View%20Model/leading_icon_animation.dart';
import 'package:tour_easy2/Module/Notification/Feed%20Back/View/Components/rating_tile.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/theme/size.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_title.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryCustomAppBar(leading: LeadingIconAnimation(), actions: [
SecondaryLeadIconAnimation(), AnimatedbellIcon()
      ],
      
      title: 'Feedback',
       titlecolor: AppColor.blackcolor),
        body: OrientationBuilder(builder: (context , orientation){
       if(orientation == Orientation.portrait){
         return Container(
           height: MediaQuery.sizeOf(context).height*1,
       
       width: MediaQuery.sizeOf(context).width*1,
           child: SingleChildScrollView(
             child: Column(children: [
              customsizedbox(context , height: Sizes.size30),
                     registrationtitle(context, text: 'Submit feedback about agent'  , fontsize: TextStyles.fontSize18),
                   
                    customsizedbox(context , height: Sizes.size20),
                     ratingtitle(context),
                     customsizedbox(context , height: Sizes.size20),
                     textfieldtitle(context, title: 'Your Feedback'),
                     brieftextfiled(context, 'Write Here',  false ,
                     
                    maxLines: 5,
                      hintcolor: AppColor.scaffoldcolor),
           
           customsizedbox(context , height: Sizes.size80),
                    primarybutton(context , text: 'Mark to Complete'),
                     customsizedbox(context , height: Sizes.size30),
             ],),
           ),
         );
       }
        else if(orientation == Orientation.landscape){
         return Container(
           height: MediaQuery.sizeOf(context).height*1,
       
       width: MediaQuery.sizeOf(context).width*1,
           child: SingleChildScrollView(
             child: Column(children: [
              
             customsizedbox(context , height: Sizes.size30),
                   registrationtitle(context, text: 'Submit feedback about agent'  , fontsize: TextStyles.fontSize18),
                 
                  customsizedbox(context , height: Sizes.size20),
                   ratingtitle(context),
                   customsizedbox(context , height: Sizes.size20),
                   textfieldtitle(context, title: 'Your Feedback'),
                   brieftextfiled(context, 'Write Here',  false ,
                   
                  maxLines: 5,
                    hintcolor: AppColor.scaffoldcolor),
            customsizedbox(context , height: Sizes.size80),
           
                  primarybutton(context , text: 'Mark to Complete'),
                   customsizedbox(context , height: Sizes.size30),
                     
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