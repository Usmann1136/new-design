import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../../Utils/theme/size.dart';
import '../../../View/Components/splash_title.dart';

Widget choosetourease(BuildContext context){
  return   Padding(
              padding: const EdgeInsets.symmetric(horizontal:Sizes.size25 ),
            
              child: Align(
                
                alignment: Alignment.topLeft,
                child: textWidget('Choose how you want to continue with Tour Ease', AppColor.blackcolor, TextStyles.fontWeight400, 24, TextAlign.left,TextStyles.ubunturegular)),
            );
}