import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Wallet/Top%20Up/View/Components/topup_amount.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';


import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';

class TopUpAmountScreen extends StatelessWidget {
  const TopUpAmountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: CustomAppBar(leading: LeadingIconAnimation() ,
      fontSize: TextStyles.fontSize20,
       title: 'Top Up', titlecolor: AppColor.blackcolor,),
           body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(children: [
          customsizedbox(context , height: Sizes.size30),
        topupamount(context),
        customsizedbox(context , height: Sizes.size270),
         primarybutton(context , text: 'Top Up' , onTap: (){
            Get.toNamed(RoutesName.withdrawamountscreen);
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
      child: Column(children: [
      customsizedbox(context , height: Sizes.size30),
      topupamount(context),
      customsizedbox(context , height: Sizes.size270),
       primarybutton(context , text: 'Top Up' ,onTap: (){
         Get.toNamed(RoutesName.withdrawamountscreen);
       }),
      customsizedbox(context , height: Sizes.size40),
      ],),
    );
  }
  else{
      return Container();
  }
}),
    );
  }
}