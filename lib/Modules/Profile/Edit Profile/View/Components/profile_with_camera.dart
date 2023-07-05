import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';


import '../../../../Splash/Onboarding/View/Components/onboarding_images.dart';

Widget profilewithcamera (BuildContext context){
  return Align(
    alignment: Alignment.topCenter,
    child: Stack(
    alignment: Alignment.bottomRight,
      children: [
       onboardingimagewidget(context, 'images/Ellipse 10.png', 96),
          SvgPicture.asset('icons/camera.svg')
  
    ],),
  );
}