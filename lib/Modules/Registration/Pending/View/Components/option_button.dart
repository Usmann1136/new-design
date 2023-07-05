import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';

Widget optionbutton(BuildContext context ,{VoidCallback? onTap ,required Color color , required Color bordercolor , required Color boxcolor , required String text}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: MediaQuery.sizeOf(context).width*.35,
      decoration: BoxDecoration(color: boxcolor ,borderRadius: BorderRadius.circular(Sizes.size50),
      
      border: Border.all(color: bordercolor )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.size18),
        child: textWidget(text, color, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.center, TextStyles.ubunturegular),
      ),
    ),
  );
  
}