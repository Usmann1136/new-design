import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

Widget aunthenticationoption(BuildContext context , {String? logoimage , Color? color , VoidCallback? onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 50,
      width: 90,
      
      decoration: BoxDecoration(
      
      border: Border.all(color: AppColor.blackcolor,),
       borderRadius: BorderRadius.circular(50)),
  
       child: Center(child:SvgPicture.asset(logoimage! , color: color,
       height: 30, width: 30,),),
    ),
  );
}