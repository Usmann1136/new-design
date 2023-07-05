import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';


import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Auth/View/Components/text_field.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_subtitle.dart';
import '../../../Registration/View/Components/text_field_title.dart';

class HouseLocationScreen extends StatelessWidget {
  const HouseLocationScreen({super.key});

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
               textfieldtitle(context, title: 'House no.'),
               textformfiled(context, '564HGe', false , keyboardtype: TextInputType.text),
               customsizedbox(context, height: Sizes.size20),
        
                textfieldtitle(context, title: 'Street' ,),
                   textformfiled(context, '654',keyboardtype: TextInputType.text, false),
                   customsizedbox(context, height: Sizes.size20),
                  
                 textfieldtitle(context, title: 'Town'),

                 textformfiled(context, 'abc town',keyboardtype: TextInputType.text, false , 
                 
                 ),
                 customsizedbox(context, height: Sizes.size20),
                 
                  textfieldtitle(context, title: 'City'  ),
                   textformfiled(context, 'City name', false , keyboardtype: TextInputType.text, ),
                   customsizedbox(context, height: Sizes.size70),
 
                  underlinetext(context, text: 'Pin on Map' , fontsize: TextStyles.fontSize12 , onTap: (){
                     Get.toNamed(RoutesName.pinonmapscreen);
                  }),
                  customsizedbox(context, height: Sizes.size60),
                SizedBox(height: 60,),
                primarybutton(context , text: 'Add Listing' , onTap: (){
              
                }),
                customsizedbox(context, height: Sizes.size30),
                
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
          
               textfieldtitle(context, title: 'House no.'),
               textformfiled(context, '564HGe', false , keyboardtype: TextInputType.text),
              
               customsizedbox(context, height: Sizes.size20),
                textfieldtitle(context, title: 'Street' ,),
                   textformfiled(context, '654',keyboardtype: TextInputType.text, false),
                   customsizedbox(context, height: Sizes.size20),
              
                 textfieldtitle(context, title: 'Town'),

                 textformfiled(context, 'abc town',keyboardtype: TextInputType.text, false , 
                 
                 ),
    
                 customsizedbox(context, height: Sizes.size20),
                  textfieldtitle(context, title: 'City'  ),
                   textformfiled(context, 'City name', false , keyboardtype: TextInputType.text, ),
                   customsizedbox(context, height: Sizes.size70),
 
                  underlinetext(context, text: 'Pin on Map' , fontsize: TextStyles.fontSize12 , onTap: (){
                    Get.toNamed(RoutesName.pinonmapscreen);
                  }),
                  customsizedbox(context, height: Sizes.size60),
            
                primarybutton(context , text: 'Add Listing' , onTap: (){
              
                }),
                customsizedbox(context, height: Sizes.size30),
        
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