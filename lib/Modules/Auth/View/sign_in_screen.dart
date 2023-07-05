import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';
import 'package:tour_easy2/Module/Auth/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Auth/View/Components/authenticatoin_option.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Auth/View/Components/continue_with.dart';
import 'package:tour_easy2/Module/Auth/View/Components/forgot_password.dart';
import 'package:tour_easy2/Module/Auth/View/Components/or.dart';
import 'package:tour_easy2/Module/Auth/View/Components/text_field.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';

import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../Utils/theme/font_style.dart';
import '../../../Utils/theme/size.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
appBar: PrimaryCustomAppBar(leading:  LeadingIconAnimation(),titlecolor: AppColor.splashtitlecolor,
title: 'TOUR EASE',
 actions: [ Padding(
   padding: const EdgeInsets.only(right: Sizes.size15),
   child: underlinetext(context, text: 'Sign up' , onTap: (){
    Get.toNamed(RoutesName.signupscreen);
   }),
 ) , ]),
    
body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.landscape){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
    
    child: SingleChildScrollView(
  child:   Column(children: [
  
  
    customsizedbox(context, height: Sizes.size49),
  registrationtitle(context, text: 'Welcome Back 👋'),
   customsizedbox(context, height: Sizes.size11),

    registrationsubtitle(context, text: 'Sign in now to continue with Tour Ease'),
   customsizedbox(context, height: Sizes.size37),
  
  
    textfieldtitle(context, title: 'Email'),
  
   
  
     textformfiled(context , 'yourmail@mail.com' , false ,keyboardtype: TextInputType.emailAddress),
  customsizedbox(context, height: Sizes.size20),
    
      textfieldtitle(context, title: 'Password'),
  

       textformfiled(context , '********' , true ,
       postfixIcon: Icon(Icons.visibility , color: AppColor.activedotcolor,),
        keyboardtype: TextInputType.visiblePassword),
      
       customsizedbox(context, height: Sizes.size30),
       forgotpassword(context),
  
  
    
   customsizedbox(context, height: Sizes.size45),
     primarybutton(context , onTap: (){
      Get.toNamed(RoutesName.registrationscreen);
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
  else if(orientation == Orientation.portrait){
    return Container(child: SingleChildScrollView(
  child:   Column(children: [
   customsizedbox(context, height: Sizes.size49),
  
  registrationtitle(context, text: 'Welcome Back 👋'),
   
  
     customsizedbox(context, height: Sizes.size11),
    registrationsubtitle(context, text: 'Sign in now to continue with Tour Ease'),
 customsizedbox(context, height: Sizes.size37),

      textfieldtitle(context, title: 'Email'),
  
    
  
     textformfiled(context , 'yourmail@mail.com' , false ,keyboardtype: TextInputType.emailAddress),
  
    
      customsizedbox(context, height: Sizes.size20),
       textfieldtitle(context, title: 'Password'),
  
    
       textformfiled(context , '********' , true ,
       postfixIcon: Icon(Icons.visibility , color: AppColor.activedotcolor,),
        keyboardtype: TextInputType.visiblePassword),
        customsizedbox(context, height: Sizes.size30),
 
  forgotpassword(context),
     
   customsizedbox(context, height: Sizes.size45),
     primarybutton(context , onTap: (){
      Get.toNamed(RoutesName.registrationscreen);
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
  else{
    return Container();
  }

})
    );
  }
}