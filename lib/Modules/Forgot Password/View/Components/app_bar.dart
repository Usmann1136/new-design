import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  final Widget leading;
  final String? title;
  final double? fontSize;
final Color titlecolor ;
  const CustomAppBar({
    required this.leading,
this.fontSize  = TextStyles.fontSize24,
    this.title ='TOUR EASE',
    this.titlecolor = AppColor.splashtitlecolor,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.size20),
      child: Container(
      height: kToolbarHeight,
      
      color: AppColor.scaffoldcolor,
      child: Row(
      
       
      
      children: [
      
      
      if (leading != null) leading,
              
      
            
                 Expanded(
                   child:Align(
                    alignment: Alignment.center,
                     child: Padding(
                       padding: const EdgeInsets.only(right: Sizes.size50),
                       child: textWidget(title!, titlecolor, 
                       TextStyles.fontWeight500, fontSize
                       
                       , TextAlign.center, TextStyles.ubuntumedium),
                     ),
                   )
                 ),
               
      
             
      
        
       
              
             
      
      
      
      ],),
      
       
      
      
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


