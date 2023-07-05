import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Auth/View/Components/button.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../Top Up/View/Components/topup_amount.dart';

class WithdrawPaymentScreen extends StatelessWidget {
  const WithdrawPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(leading: LeadingIconAnimation() ,
      fontSize: TextStyles.fontSize20,
       title: 'Withdraw', titlecolor: AppColor.blackcolor,),
        body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(children: [
          customsizedbox(context , height: Sizes.size30),
        topupamount(context , leading: 'images/bankofamerica.png' , title: 'Bank Of America'),
        customsizedbox(context , height: Sizes.size270),
         primarybutton(context , text: 'Top Up' , onTap: (){
           Get.toNamed(RoutesName.walletscreen);
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
        topupamount(context),
        customsizedbox(context , height: Sizes.size270),
         primarybutton(context , text: 'Top Up' ,onTap: (){
          Get.toNamed(RoutesName.walletscreen);
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