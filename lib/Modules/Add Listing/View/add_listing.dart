import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Auth/View/Components/text_field.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/size.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';




class AddListingScreen extends StatelessWidget {
  const AddListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation() , 
      
      fontSize: TextStyles.fontSize20,
      title: 'Add Listing', titlecolor: AppColor.blackcolor,),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return Container(
            height: MediaQuery.sizeOf(context).height*1,
                width: MediaQuery.sizeOf(context).width*1,
                child: SingleChildScrollView(child: Column(children: [
                  customsizedbox(context, height: Sizes.size45),
                  
                  registrationsubtitle(context, text: 'Fill these details to add listing for showing agents'),
               
               customsizedbox(context, height: Sizes.size30),
        
               textfieldtitle(context, title: 'Title'),
               textformfiled(context, 'Short visit to decaon town, house', false , keyboardtype: TextInputType.text),
               customsizedbox(context, height: Sizes.size20),
                textfieldtitle(context, title: 'Client name'),
                   textformfiled(context, 'Thomas Groge', false , keyboardtype: TextInputType.text),
                  customsizedbox(context, height: Sizes.size20),
                 textfieldtitle(context, title: 'Date'),
                 textformfiled(context, '17-09-2022', false ,
                 keyboardtype: TextInputType.number,
                  postfixIcon: Padding(
                   padding: const EdgeInsets.all(12),
                   child: SvgPicture.asset('icons/clock-10.svg',
                                 
                   ),
                 )),
                 customsizedbox(context, height: Sizes.size20),
                  textfieldtitle(context, title: 'Time'  ),
                   textformfiled(context,
                   
                   
                    '09:15am - 9:45am', false , 
                    keyboardtype: TextInputType.text,
                     postfixIcon: Icon(Icons.calendar_today_outlined , color: AppColor.attoureasycolor,)),
    
                customsizedbox(context, height: Sizes.size120),
                primarybutton(context , text: 'Continue' ,onTap: (){
                  Get.toNamed(RoutesName.briefscreen);
                }),
                customsizedbox(context, height: Sizes.size40),
                ],)),
          );
        }
        else if(orientation == Orientation.landscape){
           return Container(
            height: MediaQuery.sizeOf(context).height*1,
                width: MediaQuery.sizeOf(context).width*1,
                child: SingleChildScrollView(child: Column(children: [
                  customsizedbox(context, height: Sizes.size45),
          
                  registrationsubtitle(context, text: 'Fill these details to add listing for showing agents'),
        
                customsizedbox(context, height: Sizes.size30),
               textfieldtitle(context, title: 'Title'),
               textformfiled(context, 'Short visit to decaon town, house',
               keyboardtype: TextInputType.text,
                false),
            
               customsizedbox(context, height: Sizes.size20),
                textfieldtitle(context, title: 'Client name'),
                   textformfiled(context, 'Thomas Groge',keyboardtype: TextInputType.text, false),
                  
                   customsizedbox(context, height: Sizes.size20),
                 textfieldtitle(context,
                 
                 
                  title: 'Date'),

                 textformfiled(context, 
                 
                 keyboardtype: TextInputType.number,
                 '17-09-2022', false , postfixIcon: Padding(
                   padding: const EdgeInsets.all(12),
                   child: SvgPicture.asset('icons/clock-10.svg',
                                 
                   ),
                 )),
                 customsizedbox(context, height: Sizes.size20),
          
                  textfieldtitle(context, title: 'Time'  ),
                   textformfiled(context, '09:15am - 9:45am',
                   
                   keyboardtype: TextInputType.text,
                    false ,  postfixIcon: Icon(Icons.calendar_today_outlined , color: AppColor.attoureasycolor,)),
            
                customsizedbox(context, height: Sizes.size120),
                primarybutton(context , text: 'Continue' ,onTap: (){
                  Get.toNamed(RoutesName.briefscreen);
                }),
                 customsizedbox(context, height: Sizes.size40),
                ],)),
           );
        }
        else{
           return Container();
        }
      }),
      
    );
  }
}