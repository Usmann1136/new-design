import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/size.dart';

Widget aunthenticationoption(BuildContext context , {String? logoimage , Color? color , VoidCallback? onTap}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: Sizes.size46,
      width:  Sizes.size80,
      
      decoration: BoxDecoration(
      
      border: Border.all(color: AppColor.blackcolor,),
       borderRadius: BorderRadius.circular(50)),
  
       child: Center(child:SvgPicture.asset(logoimage! , color: color,
       height: 30, width: 30,),),
    ),
  );
}