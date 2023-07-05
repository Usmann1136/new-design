import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/liscene_box.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/size.dart';
import 'Components/custom_sizedbox.dart';



class Pending1Screen extends StatelessWidget {
  const Pending1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.scaffoldcolor,
 appBar:CustomAppBar( leading: LeadingIconAnimation(),
 ),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation 
        == Orientation.portrait){
          return Container(
            height: MediaQuery.sizeOf(context).height*1,
             width: MediaQuery.sizeOf(context).width*1,
            child: SingleChildScrollView(
              child: Column(children: [
                 customsizedbox( context ,height:  Sizes.size49,),
                 registrationtitle(context, text: 'Register yourself as Real estate agent'),
                 
                  customsizedbox( context ,height:  Sizes.size12,),
                  registrationsubtitle(context, text: 'Upload the ID and license image to continue'),
                
                  customsizedbox( context ,height:  Sizes.size37,),
                    textfieldtitle(context, title: 'License Image'),
                 
                   
                  liscenceBox(context),
                   customsizedbox( context ,height:  Sizes.size20,),
                     textfieldtitle(context, title: 'ID Image'),
                 
                   
                  liscenceBox(context),
                
                  customsizedbox( context ,height:  Sizes.size50,),
                  primarybutton(context , onTap: (){
                    Get.toNamed(RoutesName.pendingtwoscreen);
                  } , text: 'Continue'),
                  customsizedbox( context ,height:  Sizes.size80,),
              ],),
            ),);
        }
        else if(orientation 
        == Orientation.landscape){
          return Container(
            height: MediaQuery.sizeOf(context).height*1,
             width: MediaQuery.sizeOf(context).width*1,
            child: SingleChildScrollView(
              child: Column(children: [

            
                 customsizedbox( context ,height:  Sizes.size49,),
                 registrationtitle(context, text: 'Register yourself as Real estate agent'),
                 
                
                  customsizedbox( context ,height:  Sizes.size12,),
                  registrationsubtitle(context, text: 'Upload the ID and license image to continue'),
                
                
                  customsizedbox( context ,height:  Sizes.size37,),
                 textfieldtitle(context, title: 'License Image'),
                 
                  
                  liscenceBox(context),
                
                   customsizedbox( context ,height:  Sizes.size20,),
                   textfieldtitle(context, title: 'ID Image'),
                   
                  liscenceBox(context),
                customsizedbox( context ,height:  Sizes.size50,),
                  primarybutton(context , onTap: (){
                    Get.toNamed(RoutesName.pendingtwoscreen);
                  } , text: 'Continue'),
                   customsizedbox( context ,height:  Sizes.size80,),
              ],),
            ),);
        }
        else {
          return Container();
        }
      }),
    );
  }
}