import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/Components/onboarding_images.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../../Splash/View/Components/splash_title.dart';

class InboxAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  final Widget leading;
  final String image;
final String? title;
  const InboxAppBar({
    required this.leading,
required this.image,
   this.title,
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
               onboardingimagewidget(context, image , height: Sizes.size48 ,width:Sizes.size48  ), 
               customsizedbox(context , width: Sizes.size10),
     
      Padding(
        padding: const EdgeInsets.only(top: Sizes.size10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          textWidget(title!, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize16, TextAlign.left, TextStyles.ubunturegular),
          textWidget('Online', AppColor.splashtitlecolor, TextStyles.fontWeight400, Sizes.size11, TextAlign.left, TextStyles.ubuntulight),
        
        ],),
      ),
            
               
               
      
             
      
        
       
              
             
      
      
      
      ],),
      
       
      
      
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
