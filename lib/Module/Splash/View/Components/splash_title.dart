import 'package:flutter/material.dart';

Widget textWidget(String text , Color? color , 


FontWeight? fontWeight ,

double? fontSize, 
TextAlign align,
  String? fontFamily ){
  return Text(text ,
  textAlign: align,
  
   style: TextStyle(color: color ,
  fontFamily: fontFamily , fontWeight: fontWeight , fontSize: fontSize,
  

    ),);
}

