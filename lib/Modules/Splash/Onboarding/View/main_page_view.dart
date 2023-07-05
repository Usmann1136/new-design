import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/onboarding1.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/onboarding2.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/onboarding3.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

import '../../../../Utils/theme/colors.dart';
import 'Components/floating_button.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.scaffoldcolor,
      body:OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return  PageView(children: [
        Onboarding1Screen(),
         Onboarding2Screen(),
          Onboarding3Screen(),
      ],);
        }
        else if (orientation  == Orientation.landscape){
          return  PageView(children: [
        Onboarding1Screen(),
         Onboarding2Screen(),
          Onboarding3Screen(),
      ],);
        }
        else {
          return Container();
        }
      }),

       floatingActionButton: floatingbutton(context , (){
     Get.toNamed(RoutesName.finalgetscreen);
      }),
    );
  }
}