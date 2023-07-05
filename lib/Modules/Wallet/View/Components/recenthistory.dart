import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget recenthistory(BuildContext context,{required String withdrawortopup , required String budget , required String amount , required String dateandtime  }){
  return Container(
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
    width: MediaQuery.sizeOf(context).width*1,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.size20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customsizedbox(context , height: Sizes.size10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
 textWidget(withdrawortopup, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular),
  textWidget(dateandtime, AppColor.budgetcolor, TextStyles.fontWeight400, Sizes.size9, TextAlign.left, TextStyles.ubunturegular),              
            
            
   

          ],),
            

         customsizedbox(context , height: Sizes.size5),
        
          textWidget(budget, AppColor.budgetcolor, TextStyles.fontWeight400, Sizes.size9, TextAlign.left, TextStyles.ubunturegular),
           textWidget(amount, AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize16, TextAlign.left, TextStyles.ubunturegular),
     customsizedbox(context , height: Sizes.size10),
      ],),
    ),
  );
}