import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/text_field.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Splash/View/Components/splash_title.dart';
import 'Components/custom_sizedbox.dart';

class Pending3Screen extends StatelessWidget {
  const Pending3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
       appBar:CustomAppBar( leading: LeadingIconAnimation() ),
body: OrientationBuilder(builder: (context, orientation){
  if(orientation==Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
       width: MediaQuery.sizeOf(context).width*1,
      child: Column(children: [
         customsizedbox(context ,height: Sizes.size49),
      
         registrationtitle(context, text: 'Register yourself as Real estate agent'),
                   
                      SizedBox(height: 10,),
                       customsizedbox(context ,height: Sizes.size19),
                      registrationsubtitle(context, text: 'Add details about your insurance'),
                     
                      customsizedbox(context ,height: Sizes.size35),
                    textfieldtitle(context, title: 'Insurance Type'),
                     pendingtextfield(context, 'Auto Insurance', false , postfixIcon: Icon(Icons.keyboard_arrow_down_outlined , color: AppColor.secondaryblackcolor,)),
                      customsizedbox(context ,height: Sizes.size15),
                      
                 textfieldtitle(context, title: 'Expiry Date'),
                     pendingtextfield(context, '12-12-2026', false , 
                     
                     keyboardtype: TextInputType.number,
                     postfixIcon: Icon(Icons.calendar_today_outlined , color: AppColor.secondaryblackcolor,)),
                   SizedBox(height: 100,),
                     primarybutton(context , text: 'Continue' , onTap: (){
                      Get.toNamed(RoutesName.pendingfourscreen);
                     }),
                      
                     
      ],),);
  }
  else if(orientation==Orientation.landscape){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
       width: MediaQuery.sizeOf(context).width*1,
      child: Column(children: [
        
             customsizedbox(context ,height: Sizes.size49),
         registrationtitle(context, text: 'Register yourself as Real estate agent'),
                   
                      
                       customsizedbox(context ,height: Sizes.size19),
                      registrationsubtitle(context, text: 'Add details about your insurance'),
                      customsizedbox(context ,height: Sizes.size35),
                    
                     textfieldtitle(context, title: 'Insurance Type'),
                 
                  
                     pendingtextfield(context, 'Auto Insurance', false , postfixIcon: Icon(Icons.keyboard_arrow_down_outlined , color: AppColor.secondaryblackcolor,)),
                    
 customsizedbox(context ,height: Sizes.size15),
                       textfieldtitle(context, title: 'Expiry Date'),
                     
                     pendingtextfield(context, '12-12-2026', false , 
                     
                     keyboardtype: TextInputType.number,
                     postfixIcon: Icon(Icons.calendar_today_outlined , color: AppColor.secondaryblackcolor,)),
                    customsizedbox(context ,height: Sizes.size100),
                     primarybutton(context , text: 'Continue' , onTap: (){
                      Get.toNamed(RoutesName.pendingfourscreen);
                     }),
                      
                     
      ],),);
  }
  else{
    return Container();
  }
}),
    );
  }
}