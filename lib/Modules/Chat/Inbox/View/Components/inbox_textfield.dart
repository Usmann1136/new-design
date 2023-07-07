import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';

Widget inboxtextformfiled(BuildContext context ,  String text ,{TextEditingController? controller,TextInputType? keyboardtype , Widget? postfixIcon}) {
return Expanded(
  child:   customsizedbox(
  
    context,
  
    height: Sizes.size36,
  
  
  
    child: TextFormField(
  
    
  
      keyboardType: keyboardtype,
  
    
  
      controller: controller,
  
    
  
      cursorColor:AppColor.scaffoldcolor ,
  
    
  
      style: TextStyle(color: AppColor.scaffoldcolor, fontFamily: TextStyles.ubunturegular ,fontSize: TextStyles.fontSize14 , fontWeight: TextStyles.fontWeight400 ) ,
  
    
  
      decoration: InputDecoration(
  
    fillColor: AppColor.attoureasycolor,
  
    filled: true,
  
        
  
    
  
        hintText: text,
  
    
  
        hintStyle: TextStyle(color: AppColor.activedotcolor , fontFamily: TextStyles.ubunturegular ,fontSize: TextStyles.fontSize14 , fontWeight: TextStyles.fontWeight400 ),
  
    
  
      
  
    
  
      contentPadding: EdgeInsets.only(left: 10 , top: 5 , bottom: 5),
  
    
  
        border: OutlineInputBorder(
  
    
  
          borderSide: BorderSide(color: AppColor.attoureasycolor),
  
    
  
          borderRadius: BorderRadius.circular(5)),
  
    
  
          enabledBorder:  OutlineInputBorder(
  
    
  
          borderSide: BorderSide(color: AppColor.attoureasycolor),
  
    
  
          borderRadius: BorderRadius.circular(5),
  
    
  
          
  
    
  
          ),
  
    
  
          focusedBorder: OutlineInputBorder(
  
    
  
          borderSide: BorderSide(color: AppColor.attoureasycolor),
  
    
  
          borderRadius: BorderRadius.circular(5), 
  
    
  
      ),
  
    
  
      suffixIcon: postfixIcon,
  
    
  
    ),
  
    
  
    ),
  
  ),
);
}