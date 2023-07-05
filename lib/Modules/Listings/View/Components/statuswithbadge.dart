import 'package:flutter/widgets.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../Home/Home Page/View/Components/job_badge.dart';
import '../../../Splash/View/Components/splash_title.dart';

Widget statuswithbadge (BuildContext context,{ required status , required String count}){
  return               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                  children: [
                
                  textWidget(status, AppColor.blackcolor,TextStyles.fontWeight500, TextStyles.fontSize18, TextAlign.left , TextStyles.ubuntumedium),
                 SizedBox(width: 5,),
                  jobbadge(context ,text: count),
            
                ],),
              );
}