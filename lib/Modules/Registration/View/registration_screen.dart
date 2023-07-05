import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';

import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';

import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';


import '../../../Utils/theme/size.dart';
import '../Pending/View/Components/custom_sizedbox.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.scaffoldcolor,
appBar: CustomAppBar( leading: LeadingIconAnimation() ),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return Container(
           height: MediaQuery.sizeOf(context).height*1,
            width: MediaQuery.sizeOf(context).width*1,
            child: SingleChildScrollView(
              child: Column(children: [
               
          
                customsizedbox(context ,height:Sizes.size49 ),
        
      
                    registrationtitle(context, text: 'Register yourself as Real estate agent'),
                  customsizedbox(context ,height:Sizes.size12 ),
                  registrationsubtitle(context, text: 'Fill these details to register'),
                  
                
                 customsizedbox(context ,height:Sizes.size37 ),
                 textfieldtitle(context, title: 'Your Name*'),

                thirdtextformfiled(context, 'Jason Mike', false , keyboardtype: TextInputType.text),
              
                 customsizedbox(context ,height:Sizes.size20 ),
                    textfieldtitle(context, title: 'Phone Number'),
                
                thirdtextformfiled(context, '5461654165448', false , keyboardtype: TextInputType.phone),
          
                  customsizedbox(context ,height:Sizes.size20 ),
                   textfieldtitle(context, title: 'Brokrage Name*'),
                 
                thirdtextformfiled(context, 'Brokrage name', false , keyboardtype: TextInputType.text),
                 
                  customsizedbox(context ,height:Sizes.size20 ),
                  textfieldtitle(context, title: 'Liscense State*'),
                
                thirdtextformfiled(context, 'State', false , keyboardtype: TextInputType.text),
                customsizedbox(context ,height:Sizes.size20 ),
                 textfieldtitle(context, title:'Liscence Number*'),
             
                thirdtextformfiled(context, '251654646', false , keyboardtype: TextInputType.text , postfixIcon: Icon(Icons.keyboard_arrow_down_outlined , color: AppColor.activedotcolor,)),
                customsizedbox(context ,height:Sizes.size20 ),
                  primarybutton(context , text: 'Register Now' , onTap: (){
                    Get.toNamed(RoutesName.pendingonescreen);
                  }),
                  customsizedbox(context ,height:Sizes.size19 ),
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
              customsizedbox(context ,height:Sizes.size49 ),
        
              registrationtitle(context, text: 'Register yourself as Real estate agent'),
                  customsizedbox(context ,height:Sizes.size12 ),
              
                  registrationsubtitle(context, text: 'Fill these details to register'),
            
                 customsizedbox(context ,height:Sizes.size37 ),
                 textfieldtitle(context, title: 'Your Name*'),

                thirdtextformfiled(context, 'Jason Mike', false , keyboardtype: TextInputType.text),
                
                 customsizedbox(context ,height:Sizes.size20 ),
                    textfieldtitle(context, title: 'Phone Number'),
                
                thirdtextformfiled(context, '5461654165448', false , keyboardtype: TextInputType.phone),
                
                  customsizedbox(context ,height:Sizes.size20 ),
                   textfieldtitle(context, title: 'Brokrage Name*'),
                 
                thirdtextformfiled(context, 'Brokrage name', false , keyboardtype: TextInputType.text),
                 
                customsizedbox(context ,height:Sizes.size20 ),
                  textfieldtitle(context, title: 'Liscense State*'),
                
                thirdtextformfiled(context, 'State', false , keyboardtype: TextInputType.text),
                customsizedbox(context ,height:Sizes.size20 ),
                 textfieldtitle(context, title:'Liscence Number*'),
             
                thirdtextformfiled(context, '251654646', false , keyboardtype: TextInputType.text , postfixIcon: Icon(Icons.keyboard_arrow_down_outlined , color: AppColor.activedotcolor,)),
                customsizedbox(context ,height:Sizes.size20 ),
                  primarybutton(context , text: 'Register Now' , onTap: (){
                    Get.toNamed(RoutesName.pendingonescreen);
                  }),
          
                  customsizedbox(context ,height:Sizes.size19 ),
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