import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Splash/View%20Model/animation_text.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';


import '../../../Utils/routes/routes_name.dart';
import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/font_style.dart';
import '../../../Utils/theme/size.dart';




class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
   void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Get.toNamed(RoutesName.homescreen),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColor.scaffoldcolor,
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: Column(
        
          
          children: [
          
        

Expanded(
  child:   Align(
  
    alignment: Alignment.center,
  
    child:CenterAnimatedText() ),
), 
Align(
  alignment: Alignment.bottomCenter,
  child: textWidget('@Tour Ease', AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.center ,TextStyles.ubunturegular)),
          customsizedbox(context ,height:Sizes.size41 )
        ],),
      );
        }
        else if(orientation == Orientation.landscape){
          return Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: Column(
        
          
          children: [
          
        

Expanded(
  child:   Align(
  
    alignment: Alignment.center,
  
    child:CenterAnimatedText() ),
), 
Align(
  alignment: Alignment.bottomCenter,
  child: textWidget('@Tour Ease', AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.center ,TextStyles.ubunturegular)),
          customsizedbox(context ,height:Sizes.size41 )
        ],),
      );
        }
        else {
          return Container();
        }
      })
    );
  }
}