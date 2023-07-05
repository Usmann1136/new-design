
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Profile/Edit%20Profile/View/Components/profile_with_camera.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_subtitle.dart';
import '../../../Registration/View/Components/text_field.dart';

class EditProfilScreen extends StatelessWidget {
  const EditProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading:LeadingIconAnimation() , title: 'Edit Profile', fontSize: TextStyles.fontSize20, 
      
       titlecolor: AppColor.blackcolor,
      ),
         body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          children: [
        customsizedbox(context , height: Sizes.size30),
        profilewithcamera(context),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Your Name*'),
        thirdtextformfiled(context, 'Jason Mike', false ,keyboardtype: TextInputType.text),
        customsizedbox(context , height: Sizes.size20),
         textfieldtitle(context, title: 'Phone number'),
        thirdtextformfiled(context, '5461654165448', false ,keyboardtype: TextInputType.number),
        customsizedbox(context , height: Sizes.size20),
         textfieldtitle(context, title: 'Brokrage Name*'),
        thirdtextformfiled(context, 'Jason Mike', false ,keyboardtype: TextInputType.number),
          customsizedbox(context , height: Sizes.size50),
        primarybutton(context , text: 'Change Password' ,
        
        buttoncolor: AppColor.attoureasycolor,
         onTap: (){
        
        }),
           customsizedbox(context , height: Sizes.size20),
         primarybutton(context , text: 'Update Profile' , onTap: (){
        Get.toNamed(RoutesName.homescreen);
        }),
           customsizedbox(context , height: Sizes.size50),
          
        ],),
      ),

    );
  }
  else if  (orientation == Orientation.landscape){
      return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(children: [
            customsizedbox(context , height: Sizes.size30),
        profilewithcamera(context),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Your Name*'),
        thirdtextformfiled(context, 'Jason Mike', false ,keyboardtype: TextInputType.text),
        customsizedbox(context , height: Sizes.size20),
         textfieldtitle(context, title: 'Phone number'),
        thirdtextformfiled(context, '5461654165448', false ,keyboardtype: TextInputType.number),
        customsizedbox(context , height: Sizes.size20),
         textfieldtitle(context, title: 'Brokrage Name*'),
        thirdtextformfiled(context, 'Jason Mike', false ,keyboardtype: TextInputType.number),
          customsizedbox(context , height: Sizes.size50),
        primarybutton(context , text: 'Change Password' ,
        
        buttoncolor: AppColor.attoureasycolor,
         onTap: (){
        
        }),
           customsizedbox(context , height: Sizes.size20),
         primarybutton(context , text: 'Update Profile' , onTap: (){
        Get.toNamed(RoutesName.homescreen);
        }),
           customsizedbox(context , height: Sizes.size50),
          
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