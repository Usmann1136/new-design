import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Module/Wallet/Model/payment_method_model.dart';
import 'package:tour_easy2/Module/Wallet/Top%20Up/View%20Model/addpayment_method_view_model.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/theme/size.dart';
import '../../Top Up/View Model/payment_method_view_model.dart';

class AmountScreen extends StatelessWidget {
  const AmountScreen({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation() ,
      fontSize: TextStyles.fontSize20,
       title: 'Amount', titlecolor: AppColor.blackcolor,),
       body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          children: [
          customsizedbox(context , height: Sizes.size30),
        textfieldtitle(context, title: 'Top up amount'),
        thirdtextformfiled(context, '\$500', false ,keyboardtype: TextInputType.number),
  customsizedbox(context , height: Sizes.size330),
        primarybutton(context , text: 'Continue' , onTap: (){
          Get.toNamed(RoutesName.topupscreen);
        }),
           customsizedbox(context , height: Sizes.size50),
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
        textfieldtitle(context, title: 'Top up amount'),
            thirdtextformfiled(context, '\$500', false ,keyboardtype: TextInputType.number),
            customsizedbox(context , height: Sizes.size200),
        primarybutton(context , text: 'Continue' , onTap: (){
            Get.toNamed(RoutesName.topupscreen);
        }),
         customsizedbox(context , height: Sizes.size50),
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