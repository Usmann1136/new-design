import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';

import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/text_form_field.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/font_style.dart';

import '../../Splash/View/Components/splash_title.dart';

class EnterMailScreen extends StatelessWidget {
  const EnterMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColor.scaffoldcolor,
      appBar: secondaryappbar(context),
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 49,),
  
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Align(
        alignment: Alignment.topLeft,
        child: textWidget('Email Address', AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize24, TextAlign.left, TextStyles.ubuntumedium)),
    ),
  SizedBox(height: 11,),
   Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topLeft,
  
        child: textWidget('Enter  email associated with your account', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular)),
  
    ),
  
    SizedBox(height: 37 ,),
      Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topLeft,
  
        child: textWidget('Email', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular , ))
  
     ),
  secondarytextfiled(context,  false , AppColor.blackcolor , TextAlign.left,
  
   fontSize: TextStyles.fontSize14),
   SizedBox(height: 180 ,),
     primarybutton(context , text: 'Continue' , onTap: (){
      Get.toNamed(RoutesName.verifyemailaddresscreen);
     })
          ],),
        ),),
    );
  }
}