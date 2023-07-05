import 'package:flutter/material.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';
import '../../../../Splash/View/Components/splash_title.dart';

Widget agentwaiting (BuildContext context){
  return    Align(
              alignment: Alignment.topCenter,
              child: textWidget('Waiting for agent', AppColor.attoureasycolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.center ,TextStyles.ubuntumedium),);
}