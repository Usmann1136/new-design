import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Auth/View/Components/continue_with.dart';
import 'package:tour_easy2/Module/Auth/View/Components/or.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';

import '../../../Utils/routes/routes_name.dart';
import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/font_style.dart';
import '../../../Utils/theme/size.dart';
import '../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../Splash/View/Components/splash_title.dart';
import 'Components/app_bar.dart';
import 'Components/authenticatoin_option.dart';
import 'Components/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      appBar: PrimaryCustomAppBar(leading:   LeadingIconAnimation(), 
      titlecolor: AppColor.splashtitlecolor,
title: 'TOUR EASE',
      actions: [ Padding(
        padding: const EdgeInsets.only( right:Sizes.size15),
        child: underlinetext(context, text: 'Sign in' ,onTap: (){
          Get.toNamed(RoutesName.signinscreen);
        }),
      )]),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
        return  Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: SingleChildScrollView(
          child: Column(children: [
          
               customsizedbox(context, height: Sizes.size49),

  registrationtitle(context, text: 'Sign up on Tour Ease'),

      customsizedbox(context, height: Sizes.size11),
     registrationsubtitle(context, text: 'Sign up now to continue with Tour Ease'),
   
  

      customsizedbox(context, height: Sizes.size37),
  textfieldtitle(context, title: 'Email'),
     textformfiled(context , 'yourmail@mail.com' , false ,keyboardtype: TextInputType.emailAddress),
  
    
    customsizedbox(context, height: Sizes.size20),
    textfieldtitle(context, title: 'Password'),
       textformfiled(context , '********' , true , keyboardtype: TextInputType.visiblePassword),
      
          customsizedbox(context, height: Sizes.size20),
  textfieldtitle(context, title: 'Confirm Password'),
   
       textformfiled(context , '********' , true , keyboardtype: TextInputType.visiblePassword ,  postfixIcon: Icon(Icons.visibility , color: AppColor.activedotcolor,),),
         customsizedbox(context, height: Sizes.size45),
       primarybutton(context , text: 'Sign up' , onTap: ()
       {
        Get.toNamed(RoutesName.signupscreen);
       }),
      customsizedbox(context, height: Sizes.size37),
  
  orword(context),
     customsizedbox(context, height: Sizes.size25),
     continuewith(context),
   
       customsizedbox(context, height: Sizes.size30),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 35),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        aunthenticationoption(context,logoimage: 'icons/icons8-google.svg' , onTap: (){}),
         aunthenticationoption(context,logoimage: 'icons/icons8-facebook.svg', onTap: (){}),
          aunthenticationoption(context,logoimage: 'icons/apple-seeklogo.com.svg' , color: AppColor.applelogocolor, onTap: (){}),
       ],),
     ),
  customsizedbox(context, height: Sizes.size60),
          ],),
        ),);
        }
        else if (orientation == Orientation.landscape){
          return  Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: SingleChildScrollView(
          child: Column(children: [
        
               customsizedbox(context, height: Sizes.size49),
              registrationtitle(context, text: 'Sign up on Tour Ease'),
                customsizedbox(context, height: Sizes.size11),
    
     registrationsubtitle(context, text: 'Sign up now to continue with Tour Ease'),
             
      customsizedbox(context, height: Sizes.size37),
    textfieldtitle(context, title: 'Email'),
   
  
     textformfiled(context , 'yourmail@mail.com' , false ,keyboardtype: TextInputType.emailAddress),
    customsizedbox(context, height: Sizes.size20),
    
       textfieldtitle(context, title: 'Password'),
   
  
  
       textformfiled(context , '********' , true , keyboardtype: TextInputType.visiblePassword),
    
             customsizedbox(context, height: Sizes.size20),
   textfieldtitle(context, title: 'Confirm Password'),

       textformfiled(context , '********' , true , keyboardtype: TextInputType.visiblePassword ,  postfixIcon: Icon(Icons.visibility , color: AppColor.activedotcolor,),),
      
         customsizedbox(context, height: Sizes.size45),
       primarybutton(context , text: 'Sign up' , onTap: (){
        Get.toNamed(RoutesName.signupscreen);
       }),
  
      customsizedbox(context, height: Sizes.size37),
      orword(context),
    
    customsizedbox(context, height: Sizes.size25),
   SizedBox(height: 25,),
     textWidget('Continue with', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.right, TextStyles.ubunturegular),
     
       customsizedbox(context, height: Sizes.size30),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 35),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        aunthenticationoption(context,logoimage: 'icons/icons8-google.svg' , onTap: (){}),
         aunthenticationoption(context,logoimage: 'icons/icons8-facebook.svg', onTap: (){}),
          aunthenticationoption(context,logoimage: 'icons/apple-seeklogo.com.svg' , color: AppColor.applelogocolor, onTap: (){}),
       ],),
     ),
  customsizedbox(context, height: Sizes.size60),
          ],),
        ),);
        }
        else {
          return Container();
        }
      })
    );
  }
}