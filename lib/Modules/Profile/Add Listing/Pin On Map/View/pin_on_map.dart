import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_subtitle.dart';


class PinOnMapScreen extends StatelessWidget {
  const PinOnMapScreen({super.key});

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
                  registrationsubtitle(context, text: 'Pin on map'),
            
                    customsizedbox(context, height: Sizes.size30),
              
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 child: onboardingimagewidget(context, 'images/googlemap.png',MediaQuery.sizeOf(context).width*1),
               ),
               customsizedbox(context, height: Sizes.size50),
 
 primarybutton(context ,text: 'Continue' , onTap: (){
  Get.toNamed(RoutesName.addlistingscreen);
 }),
 customsizedbox(context, height: Sizes.size60),
                ],),),
          );
        }
        else if(orientation == Orientation.landscape){
          return Container(
              height: MediaQuery.sizeOf(context).height*1,
                width: MediaQuery.sizeOf(context).width*1,
                child: SingleChildScrollView(child: Column(children: [
              
                   customsizedbox(context, height: Sizes.size45),
                  registrationsubtitle(context, text: 'Pin on map'),
                  customsizedbox(context, height: Sizes.size30),
              
              
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 child: onboardingimagewidget(context, 'images/googlemap.png',MediaQuery.sizeOf(context).width*1),
               ),
               customsizedbox(context, height: Sizes.size50),
 primarybutton(context ,text: 'Continue' , onTap: (){
Get.toNamed(RoutesName.addlistingscreen);
 }),
 customsizedbox(context, height: Sizes.size60),
 
                ],),),
          );
        }
        else {
          return Container();
        }
       }),
    );
  }
}