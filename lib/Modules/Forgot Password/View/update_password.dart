import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_title.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/font_style.dart';
import '../../../Utils/theme/size.dart';
import '../../Auth/View/Components/button.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../Registration/Pending/View/Components/registration_subtitle.dart';
import '../../Splash/View/Components/splash_title.dart';
import 'Components/text_form_field.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.scaffoldcolor,
appBar: CustomAppBar(leading: LeadingIconAnimation(), ),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return  Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: SingleChildScrollView(
          child: Column(children: [
            
                  
                      customsizedbox(context, height: Sizes.size49),
                              
            registrationtitle(context, text: 'Update Password'),
    
            customsizedbox(context, height: Sizes.size11),
           registrationsubtitle(context, text: 'Now add a new Password'),
          
          
              customsizedbox(context, height: Sizes.size37),
            textfieldtitle(context, title: 'Password'),
             
          secondarytextfiled(context,  false , AppColor.blackcolor , TextAlign.left,
          
           fontSize: TextStyles.fontSize14),
            customsizedbox(context, height: Sizes.size11),
             textfieldtitle(context, title: 'Confirm Password'),
             
          secondarytextfiled(context,  false , AppColor.blackcolor , TextAlign.left,),
           
             customsizedbox(context, height: Sizes.size90),
             primarybutton(context , text: 'Update Password' , onTap: (){
              Get.toNamed(RoutesName.signinscreen);
             }),
               customsizedbox(context, height: Sizes.size100),
        
          ],),
        ),);
        }
        else if (orientation == Orientation.landscape){
          return  Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        child: SingleChildScrollView(
          child: Column(children: [
              customsizedbox(context, height: Sizes.size49),
        
                              
            registrationtitle(context, text: 'Update Password'),
           
        
            customsizedbox(context, height: Sizes.size11),
           registrationsubtitle(context, text: 'Now add a new Password'),
            customsizedbox(context, height: Sizes.size37),
          
            textfieldtitle(context, title: 'Password'),
             
          secondarytextfiled(context,  false , AppColor.blackcolor , TextAlign.left,
          
           fontSize: TextStyles.fontSize14),
              customsizedbox(context, height: Sizes.size11),
             textfieldtitle(context, title: 'Confirm Password'),
             
          secondarytextfiled(context,  false , AppColor.blackcolor , TextAlign.left,),
            customsizedbox(context, height: Sizes.size90),
             primarybutton(context , text: 'Update Password' , onTap: (){
              Get.toNamed(RoutesName.signinscreen);
             }),
                 customsizedbox(context, height: Sizes.size100),          ],),
        ),);
        }
        else{return Container();}
      })
    );
  }
}