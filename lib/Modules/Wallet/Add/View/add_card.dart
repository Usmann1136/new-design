import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation() ,
      title: 'Add Card', fontSize: TextStyles.fontSize20,  titlecolor: AppColor.blackcolor,),
         body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          children: [
        customsizedbox(context , height: Sizes.size30),
        textfieldtitle(context, title: 'Card Name'),
        thirdtextformfiled(context, 'Janson williey', false, keyboardtype: TextInputType.text),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Card Number'),
        thirdtextformfiled(context, '4565 6545 6546 5543 ', false, keyboardtype: TextInputType.number),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Expiry Date'),
           thirdtextformfiled(context, '25-12-2026', false, keyboardtype: TextInputType.text),
           customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'CVV'),
         thirdtextformfiled(context, '800', false, keyboardtype: TextInputType.number),
           customsizedbox(context , height: Sizes.size60),
         primarybutton(context , text: 'Add Card',onTap: (){
           Get.toNamed(RoutesName.topupamountscreen);
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
        textfieldtitle(context, title: 'Card Name'),
        thirdtextformfiled(context, 'Janson williey', false, keyboardtype: TextInputType.text),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Card Number'),
        thirdtextformfiled(context, '4565 6545 6546 5543 ', false, keyboardtype: TextInputType.number),
        customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'Expiry Date'),
           thirdtextformfiled(context, '25-12-2026', false, keyboardtype: TextInputType.text),
           customsizedbox(context , height: Sizes.size20),
        textfieldtitle(context, title: 'CVV'),
         thirdtextformfiled(context, '800', false, keyboardtype: TextInputType.number),
         customsizedbox(context , height: Sizes.size60),
         primarybutton(context , text: 'Add Card',onTap: (){
           Get.toNamed(RoutesName.topupamountscreen);
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