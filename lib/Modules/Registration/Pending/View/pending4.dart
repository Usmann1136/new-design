import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/pending_status.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/size.dart';


class Pending4Screen extends StatelessWidget {
  const Pending4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      appBar: CustomAppBar(leading: LeadingIconAnimation()),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation==Orientation.portrait){
          return Container(
            
              height: MediaQuery.sizeOf(context).height*1,
       width: MediaQuery.sizeOf(context).width*1,
            child: Column(children: [
              SizedBox(height: 49,),
              customsizedbox(context ,height: Sizes.size49),
              registrationtitle(context, text: 'Thank you for submitting registration form'),

                     customsizedbox(context ,height: Sizes.size10),
                    
                      registrationsubtitle(context, text: 'After verification Tour Ease will notify you on your email to get started with Tour Ease'),
                      customsizedbox(context ,height: Sizes.size45),
                  
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: statusblock(context)),
                    ),
            ],),);
        }
        else if (orientation==Orientation.landscape){
           return Container(
            
              height: MediaQuery.sizeOf(context).height*1,
       width: MediaQuery.sizeOf(context).width*1,
            child: Column(children: [
               customsizedbox(context ,height: Sizes.size49),
              
              registrationtitle(context, text: 'Thank you for submitting registration form'),

                    
                     customsizedbox(context ,height: Sizes.size10),
                      registrationsubtitle(context, text: 'After verification Tour Ease will notify you on your email to get started with Tour Ease'),
                  
                    SizedBox(height: 45,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: statusblock(context)),
                    ),
            ],),);
        }
        else {
 return Container();
        }
      })
    );
  }
}