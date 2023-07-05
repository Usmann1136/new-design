import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../Utils/theme/font_style.dart';

class PrimaryCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  
final Widget leading;
final List<Widget> actions;
final Color titlecolor;
 final String? title ;
  const PrimaryCustomAppBar({
    required this.leading,
    required this.actions,
    required this.titlecolor,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
      height: kToolbarHeight,
      color: AppColor.scaffoldcolor,
      child: Row(
      
       
      
      children: [
      
      
      if (leading != null) leading,
              
      customsizedbox(context , width: Sizes.size50),
             Expanded(
               child: Align(
                alignment: Alignment.center,
                 child: textWidget(title!, titlecolor, TextStyles.fontWeight500, TextStyles.fontSize20
                 
                 , TextAlign.center, TextStyles.ubuntumedium),
               ),
             ),
      
      
      if (actions != null) ...actions
            
       
            
             
      
      
      
      ],),
      
       
      
      
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
