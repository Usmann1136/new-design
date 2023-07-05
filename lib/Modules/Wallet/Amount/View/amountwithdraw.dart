import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_subtitle.dart';
import '../../../Registration/View/Components/text_field.dart';

class WithdrawAmountScreen extends StatelessWidget {
  const WithdrawAmountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation(), title: 'Amount',
       titlecolor: AppColor.blackcolor, fontSize: TextStyles.fontSize20,),
         body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
          children: [
          customsizedbox(context , height: Sizes.size30),
        registrationsubtitle(context, text: 'Withdraw amount'),
        thirdtextformfiled(context, '\$500', false ,keyboardtype: TextInputType.number),
        customsizedbox(context , height: Sizes.size330),
        primarybutton(context , text: 'Continue' , onTap: (){
        Get.toNamed(RoutesName.withdrawfromyourbankscreen);
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
        registrationsubtitle(context, text: 'Withdraw amount'),
        thirdtextformfiled(context, '\$500', false ,keyboardtype: TextInputType.number),
         
        primarybutton(context , text: 'Continue' , onTap: (){
           Get.toNamed(RoutesName.withdrawfromyourbankscreen);
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