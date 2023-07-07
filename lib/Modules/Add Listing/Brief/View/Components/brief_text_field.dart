import 'package:flutter/material.dart';

import '../../../../../../Utils/theme/colors.dart';
import '../../../../../../Utils/theme/font_style.dart';
import '../../../../../../Utils/theme/size.dart';

Widget brieftextfiled(BuildContext context ,  String text ,bool obsecuretext,

{TextEditingController? controller,TextInputType? keyboardtype ,
Color? hintcolor = AppColor.activedotcolor,
 int? maxLines=15, Widget? postfixIcon}) {
return Padding(
  padding: const EdgeInsets.symmetric(horizontal:Sizes.size25),
  child:   TextFormField(
    keyboardType: keyboardtype,
    controller: controller,
    cursorColor:AppColor.activedotcolor ,
    obscureText: obsecuretext,
    obscuringCharacter: '*',
  maxLines: maxLines,
    style: TextStyle(
      
      
      color: AppColor.activedotcolor, fontFamily: TextStyles.ubunturegular ,fontSize: TextStyles.fontSize14 , fontWeight: TextStyles.fontWeight400 ) ,
   
   
    decoration: InputDecoration(
       
      hintText: text,
      hintStyle: TextStyle(color: hintcolor , fontFamily: TextStyles.ubunturegular ,fontSize: TextStyles.fontSize14 , fontWeight: TextStyles.fontWeight400 ),
    
    contentPadding: EdgeInsets.only(left: 25 , top: 18 , bottom: 18),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.activedotcolor),
        borderRadius: BorderRadius.circular(20)),
        enabledBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.activedotcolor),
        borderRadius: BorderRadius.circular(20),),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.activedotcolor),
        borderRadius: BorderRadius.circular(20), 
    ),
    suffixIcon: postfixIcon,
  ),
  )
);
}
