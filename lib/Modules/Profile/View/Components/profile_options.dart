import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';

Widget profileoption(BuildContext context , {required String profileoptions , VoidCallback? onTap}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width*1,
         decoration: BoxDecoration(
                    
                    boxShadow: [
                      BoxShadow(
                        color:AppColor.secondaryblackcolor.withOpacity(.1),
                        offset: Offset(0, 1),
                        blurRadius: 8
                      )
                    ],
                    color: AppColor.scaffoldcolor, borderRadius: BorderRadius.circular(Sizes.size20)
                  ),
        
        
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size10),
          child: ListTile(leading: textWidget(profileoptions, AppColor.blackcolor, TextStyles.fontWeight300, TextStyles.fontSize14,TextAlign.left , TextStyles.ubuntumedium),
          
          trailing: Icon(Icons.chevron_right_outlined ,color: AppColor.blackcolor,size: 24,),
          ),
        )),
    ),
  );
}