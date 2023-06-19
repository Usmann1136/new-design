import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

Widget dotsindicator(BuildContext context , int position ) {
    return DotsIndicator(
      position: position,
      dotsCount: 3,
      decorator: DotsDecorator(
    color: AppColor.inactivedotcolor, // Inactive color
    activeColor: AppColor.activedotcolor,
    
    activeSize: Size(19, 8),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
  ),
      
      );
    
  }