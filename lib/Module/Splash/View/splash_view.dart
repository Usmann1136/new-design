import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/View%20Model/animation_text.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';

import '../../../Utils/routes/routes.dart';
import '../../../Utils/routes/routes_name.dart';
import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/font_style.dart';




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
      () => Get.toNamed(RoutesName.finalgetscreen),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColor.scaffoldcolor,
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        child: Column(
        
          
          children: [
          
        

Expanded(
  child:   Align(
  
    alignment: Alignment.center,
  
    child:CenterAnimatedText() ),
), 
Align(
  alignment: Alignment.bottomCenter,
  child: textWidget('@Tour Ease', AppColor.attoureasycolor, FontWeight.w400, 12, TextAlign.center ,TextStyles.ubunturegular)),
          SizedBox(height: 41,),
        ],),
      ),
    );
  }
}