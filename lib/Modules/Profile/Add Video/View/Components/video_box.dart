import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../Splash/View/Components/splash_title.dart';

Widget videobox(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Container(
      width: MediaQuery.sizeOf(context).width*1,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColor.activedotcolor)
      
      
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size70),
          child: GestureDetector(
            onTap: (){},
            child: Column(children: [
              SvgPicture.asset('icons/ant-design_upload-outlined.svg'),
              textWidget('Upload Here', AppColor.activedotcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.center, TextStyles.ubunturegular)
            ],),
          ),
        ),
      )
      ),
    
  );
}