import 'package:flutter/material.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';

Widget secondarytextfiled(BuildContext context , 
 bool obsecuretext,
 Color bordercolor ,
 TextAlign textalign,
 {TextEditingController? controller,

double? fontSize,

TextInputType? keyboardtype , Widget? postfixIcon}) {
return Padding(
  padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
  child:   TextFormField(
    keyboardType: keyboardtype,
    controller: controller,
    
    textAlign: textalign,
    cursorColor:AppColor.blackcolor,
    obscureText: obsecuretext,
    style: TextStyle(color: AppColor.blackcolor ,
     fontFamily: TextStyles.ubunturegular ,
     
     fontSize: fontSize , fontWeight: TextStyles.fontWeight400 ,fontStyle: FontStyle.normal ) ,
    decoration: InputDecoration(
      
     
    
    contentPadding: EdgeInsets.only(left: 25 , top: 18 , bottom: 18),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.blackcolor),
        borderRadius: BorderRadius.circular(100)),
        enabledBorder:  OutlineInputBorder(
        borderSide: BorderSide(color:AppColor.blackcolor),
        borderRadius: BorderRadius.circular(100),
        
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.blackcolor),
        borderRadius: BorderRadius.circular(100), 
    ),
    suffixIcon: postfixIcon,
  ),
  )
);
}