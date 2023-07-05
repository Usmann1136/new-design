import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../Utils/theme/colors.dart';

Widget textWidget(String text , Color? color , 


FontWeight? fontWeight ,

double? fontSize, 
TextAlign align,
  String? fontFamily ,{TextDecoration? textDecoration , Color? decorationcolor= AppColor.activedotcolor,}){
  return Text(text ,
  textAlign: align,
  
   style: TextStyle(color: color ,
   decoration: textDecoration,
   decorationColor: decorationcolor,
   fontStyle: FontStyle.normal,
  fontFamily: fontFamily , fontWeight: fontWeight , fontSize: fontSize,
  

    ),);
}

