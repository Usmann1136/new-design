import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/choose_cards.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/choose_tour_ease.dart';

import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/routes/routes_name.dart';

import '../../../../Utils/theme/size.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';


class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return  Container
        (
          height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
        child: Column(
          children: [
  customsizedbox(context ,height:Sizes.size99 ),
          
            choosetourease(context),
             customsizedbox(context ,height:Sizes.size33 ),
           choosecards('As a Real Estate Agent', MediaQuery.of(context).size.width*1 , (){
            Get.toNamed(RoutesName.signinscreen);
           }),
          
            customsizedbox(context ,height:Sizes.size20 ),
           choosecards('As a Showing Agent', MediaQuery.of(context).size.width*1 ,(){}),
             customsizedbox(context ,height:Sizes.size20 ),
           choosecards('Virtual Properties Visit', MediaQuery.of(context).size.width*1 , (){}),
          ],
        ),
        
        );
        }
        else if ( orientation == Orientation.landscape){
          return  Container
        
        (
          height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
        child: SingleChildScrollView(
          child: Column(
            children: [
        
          customsizedbox(context ,height:Sizes.size99 ),
          choosetourease(context),

             
             customsizedbox(context ,height:Sizes.size33 ),
             choosecards('As a Real Estate Agent', MediaQuery.of(context).size.width*1 , (){
              Get.toNamed(RoutesName.signinscreen);
             }),
             customsizedbox(context ,height:Sizes.size20 ),
             choosecards('As a Showing Agent', MediaQuery.of(context).size.width*1 ,(){}),
               customsizedbox(context ,height:Sizes.size20 ),
             choosecards('Virtual Properties Visit', MediaQuery.of(context).size.width*1 , (){}),
            ],
          ),
        ),
        
        );
        }
        else {
          return Container();
        }
      })
    );
        
    
  }
}