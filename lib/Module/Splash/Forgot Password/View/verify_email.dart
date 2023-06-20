import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../Utils/theme/font_style.dart';
import '../../Auth/View/Components/button.dart';
import '../../Splash/View/Components/splash_title.dart';
import 'Components/text_form_field.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondaryappbar(context),
      backgroundColor: AppColor.scaffoldcolor ,
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
        child: textWidget('Verify Email ', AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize24, TextAlign.left, TextStyles.ubuntumedium)),
    ),
  SizedBox(height: 11,),
   Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topLeft,
  
        child: textWidget('Enter the code was sent to yourmail@mail.com', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular)),
  
    ),
  
    SizedBox(height: 37 ,),
      
  secondarytextfiled(context,  true , AppColor.transparentcolor ,TextAlign.center, fontSize: TextStyles.fontSize24),
   SizedBox(height: 136 ,),
   textWidget('Change the email address',
  
    AppColor.blackcolor, TextStyles.fontWeight400,
     TextStyles.fontSize14, TextAlign.center, TextStyles.ubunturegular , textDecoration: TextDecoration.underline),
     SizedBox(height: 30 ,),
     primarybutton(context , text: 'Continue' , onTap: (){
     Get.toNamed(RoutesName.updatepasswordscreen);
     })
          ],),
        ),),
    );
  }
}