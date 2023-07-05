import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_subtitle.dart';
import '../../../Registration/View/Components/text_field.dart';

class AddBankScreen extends StatelessWidget {
  const AddBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(leading: LeadingIconAnimation() ,
      title: 'Add Bank', fontSize: TextStyles.fontSize20,  titlecolor: AppColor.blackcolor,),
               body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          children: [
        customsizedbox(context , height: Sizes.size30),
        
        textfieldtitle(context, title:'Bank Name'),
        thirdtextformfiled(context, 'Bank Of America', false, keyboardtype: TextInputType.text),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Account Number'),
        thirdtextformfiled(context, '4565 6545 6546 5543', false, keyboardtype: TextInputType.number),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Account Name'),
        
           thirdtextformfiled(context, 'Jason Wlliayn', false, keyboardtype: TextInputType.text),
           customsizedbox(context , height: Sizes.size150),
        
         primarybutton(context , text: 'Add Bank',onTap: (){
           Get.toNamed(RoutesName.withdrawyourpaymentscreen);
         }),
          customsizedbox(context , height: Sizes.size40),
        ],),
      ),

    );
  }
  else if  (orientation == Orientation.landscape){
      return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(children: [
           customsizedbox(context , height: Sizes.size30),
        
        textfieldtitle(context, title:'Bank Name'),
        thirdtextformfiled(context, 'Bank Of America', false, keyboardtype: TextInputType.text),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Account Number'),
        thirdtextformfiled(context, '4565 6545 6546 5543', false, keyboardtype: TextInputType.number),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Account Name'),
        
           thirdtextformfiled(context, 'Jason Wlliayn', false, keyboardtype: TextInputType.text),
          
         customsizedbox(context , height: Sizes.size150),
         primarybutton(context , text: 'Add Bank',onTap: (){
          Get.toNamed(RoutesName.withdrawyourpaymentscreen);
         }),
          customsizedbox(context , height: Sizes.size40),
        ],),
      ),
    );
  }
  else{
      return Container();
  }
}),
    );
  }
}