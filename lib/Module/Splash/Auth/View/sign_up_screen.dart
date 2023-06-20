import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';

import '../../../Utils/routes/routes_name.dart';
import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/font_style.dart';
import '../../Splash/View/Components/splash_title.dart';
import 'Components/app_bar.dart';
import 'Components/authenticatoin_option.dart';
import 'Components/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      appBar: appbar(context , 'Sign in'  , onPressed: (){
  Get.toNamed(RoutesName.signinscreen);
}),
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
        child: textWidget('Sign up on Tour Ease', AppColor.blackcolor, TextStyles.fontWeight500, TextStyles.fontSize24, TextAlign.left, TextStyles.ubuntumedium)),
    ),
  
    SizedBox(height: 11 ,),
     Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topLeft,
  
        child: textWidget('Sign up now to continue with Tour Ease', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular)),
  
    ),
  
    SizedBox(height: 37 ,),
     Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topLeft,
  
        child: textWidget('Email', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular , ))
  
     ),
  
     textformfiled(context , 'yourmail@mail.com' , false ,keyboardtype: TextInputType.emailAddress),
  
     SizedBox(height: 20 ,),
  
     Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topLeft,
  
        child: textWidget('Password', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular ,  ))
  
     ),
       textformfiled(context , '********' , true , keyboardtype: TextInputType.visiblePassword),
        SizedBox(height: 20 ,),
  
     Padding(
  
      padding: const EdgeInsets.symmetric(horizontal: 25),
  
      child: Align(
  
         alignment: Alignment.topLeft,
  
        child: textWidget('Confirm Password', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize14, TextAlign.left, TextStyles.ubunturegular , ))
  
     ),
       textformfiled(context , '********' , true , keyboardtype: TextInputType.visiblePassword ,  postfixIcon: Icon(Icons.visibility , color: AppColor.activedotcolor,),),
       SizedBox(height: 45,),
       primarybutton(context , text: 'Sign up' , onTap: (){}),
    SizedBox(height: 37,),
     textWidget('OR', AppColor.blackcolor, TextStyles.fontWeight300, TextStyles.fontSize16, TextAlign.right, TextStyles.ubuntulight),
   SizedBox(height: 25,),
     textWidget('Continue with', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize12, TextAlign.right, TextStyles.ubunturegular),
     SizedBox(height: 30,),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 35),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        aunthenticationoption(context,logoimage: 'icons/icons8-google.svg' , onTap: (){}),
         aunthenticationoption(context,logoimage: 'icons/icons8-facebook.svg', onTap: (){}),
          aunthenticationoption(context,logoimage: 'icons/apple-seeklogo.com.svg' , color: AppColor.applelogocolor, onTap: (){}),
       ],),
     ),
SizedBox(height: 60,),
          ],),
        ),),
    );
  }
}