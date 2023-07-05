import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../Splash/View/Components/splash_title.dart';

Widget myvideotile (BuildContext context ,  ){
  return ListTile(
    leading: Image.asset('images/Ellipse 10.png', height: 51 , width: 51,),
    title: textWidget('My Videos', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize24, TextAlign.left, TextStyles.ubunturegular),
  );
}