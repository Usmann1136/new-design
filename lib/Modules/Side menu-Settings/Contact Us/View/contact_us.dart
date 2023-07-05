import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/Brief/View/Components/brief_text_field.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_subtitle.dart';
import '../../../Registration/Pending/View/Components/registration_title.dart';
import '../../../Registration/View/Components/text_field.dart';
import '../../../Registration/View/Components/text_field_title.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation() , title: 'Contact Us', fontSize: TextStyles.fontSize20, titlecolor: AppColor.blackcolor,),
       body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return Container(
           height: MediaQuery.sizeOf(context).height*1,
            width: MediaQuery.sizeOf(context).width*1,
            child: SingleChildScrollView(
              child: Column(children: [
               
                 customsizedbox(context ,height:Sizes.size37 ),
                 textfieldtitle(context, title: 'Your Name*'),
            
                thirdtextformfiled(context, 'Jason Mike', false , keyboardtype: TextInputType.text),
              
                 customsizedbox(context ,height:Sizes.size20 ),
                    textfieldtitle(context, title: 'Email*'),
                
                thirdtextformfiled(context, 'uourmail.mail.com', false , keyboardtype: TextInputType.emailAddress),
                      
                  customsizedbox(context ,height:Sizes.size20 ),
                   textfieldtitle(context, title: 'Brokrage Name*'),
                 
                thirdtextformfiled(context, 'Brokrage name', false , keyboardtype: TextInputType.text),
                 
                  customsizedbox(context ,height:Sizes.size20 ),
            textfieldtitle(context, title: 'Subject'),
                 
                thirdtextformfiled(context, 'How to create listing', false , keyboardtype: TextInputType.text),
                 
                  customsizedbox(context ,height:Sizes.size20 ),
                  textfieldtitle(context, title: 'Message'),
                  brieftextfiled(context, 
                
                  'Write here', 
                  false ,maxLines: 8),
                   customsizedbox(context ,height:Sizes.size60 ),
                  primarybutton(context , text: 'Submit' , onTap: (){
                                Get.toNamed(RoutesName.homescreen);
                  }),
                  customsizedbox(context ,height:Sizes.size30 ),
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
               customsizedbox(context ,height:Sizes.size37 ),
                 textfieldtitle(context, title: 'Your Name*'),
            
                thirdtextformfiled(context, 'Jason Mike', false , keyboardtype: TextInputType.text),
              
                 customsizedbox(context ,height:Sizes.size20 ),
                    textfieldtitle(context, title: 'Email*'),
                
                thirdtextformfiled(context, 'uourmail.mail.com', false , keyboardtype: TextInputType.emailAddress),
                      
                  customsizedbox(context ,height:Sizes.size20 ),
                   textfieldtitle(context, title: 'Brokrage Name*'),
                 
                thirdtextformfiled(context, 'Brokrage name', false , keyboardtype: TextInputType.text),
                 
                  customsizedbox(context ,height:Sizes.size20 ),
            textfieldtitle(context, title: 'Subject'),
                 
                thirdtextformfiled(context, 'How to create listing', false , keyboardtype: TextInputType.text),
                 
                  customsizedbox(context ,height:Sizes.size20 ),
                  textfieldtitle(context, title: 'Message'),
                  brieftextfiled(context, 
                
                  'Write here', 
                  false ,maxLines: 8),
                   customsizedbox(context ,height:Sizes.size60 ),
                  primarybutton(context , text: 'Submit' , onTap: (){
                                  Get.toNamed(RoutesName.homescreen);
                  }),
                  customsizedbox(context ,height:Sizes.size30 ),
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