import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/Components/underline_text.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../Utils/theme/font_style.dart';
import '../../../Utils/theme/size.dart';
import '../../Auth/View/Components/button.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../Registration/Pending/View/Components/registration_subtitle.dart';
import '../../Splash/View/Components/splash_title.dart';
import 'Components/text_form_field.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColor.scaffoldcolor ,
      appBar: CustomAppBar(leading: LeadingIconAnimation(),),
        body: OrientationBuilder(builder: (context , orientation){
          if(orientation == Orientation.portrait){
            return Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: SingleChildScrollView(
          child: Column(children: [

          
              customsizedbox(context, height: Sizes.size49),
            registrationtitle(context, text: 'Verify Email'),
  
    customsizedbox(context, height: Sizes.size11),

  registrationsubtitle(context, text: 'Enter the code was sent to yourmail@mail.com'),

  
      customsizedbox(context, height: Sizes.size30),
      
  secondarytextfiled(context,  true , AppColor.transparentcolor ,TextAlign.center, fontSize: TextStyles.fontSize24),
  
    customsizedbox(context, height: Sizes.size136),
  
underlinetext(context, text:'Change the email address' ,  ),
    customsizedbox(context, height: Sizes.size30),
     
     primarybutton(context , text: 'Continue' , onTap: (){
     Get.toNamed(RoutesName.updatepasswordscreen);
     })
          ],),
        ),);
          }
          else if(orientation == Orientation.landscape){
            return Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: SingleChildScrollView(
          child: Column(children: [
  customsizedbox(context, height: Sizes.size49),
      
            registrationtitle(context, text: 'Verify Email'),
  
  
    customsizedbox(context, height: Sizes.size180),
  registrationsubtitle(context, text: 'Enter the code was sent to yourmail@mail.com'),

  
    
  customsizedbox(context, height: Sizes.size30),
      
  secondarytextfiled(context,  true , AppColor.transparentcolor ,TextAlign.center, fontSize: TextStyles.fontSize24),
    customsizedbox(context, height: Sizes.size136),
underlinetext(context, text:'Change the email address' ,  ),
  
    
       customsizedbox(context, height: Sizes.size30),
     primarybutton(context , text: 'Continue' , onTap: (){
     Get.toNamed(RoutesName.updatepasswordscreen);
     })
          ],),
        ),);
          }
          else {
            return Container();
          }
        })
    );
  }
}