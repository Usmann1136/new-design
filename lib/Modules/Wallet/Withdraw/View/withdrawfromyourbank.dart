import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Wallet/Top%20Up/View/Components/paymentmethod.dart';
import 'package:tour_easy2/Module/Wallet/Withdraw/View%20Model/add_new_bank_view_model.dart';
import 'package:tour_easy2/Module/Wallet/Withdraw/View%20Model/withdraw_amount_view_model.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Registration/Pending/View/Components/registration_subtitle.dart';

class WithdrawFromYourAccountScreen extends StatelessWidget {
  const WithdrawFromYourAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final withdrawamountcontroller = Get.put(WithdrawAmountViewModel());
    final addnewbankcontroller = Get.put(AddNewBankViewModel());
    return Scaffold(
      
        appBar: CustomAppBar(leading: LeadingIconAnimation() ,
      fontSize: TextStyles.fontSize20,
       title: 'Withdraw', titlecolor: AppColor.blackcolor,),
          body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: Column(children: [
         customsizedbox(context , height: Sizes.size30),
      registrationsubtitle(context, text: 'Bank Account'),
      customsizedbox(context , height: Sizes.size10),
      Obx(() => ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: withdrawamountcontroller.withdrawpaymentcard.length,
      shrinkWrap: true,
      itemBuilder: (context , index){
        return paymentmethod(context,
         onTap: withdrawamountcontroller.withdrawpaymentcard[index].onTap,
         title: withdrawamountcontroller.withdrawpaymentcard[index].title.toString(), 
        leading: withdrawamountcontroller.withdrawpaymentcard[index].leading.toString(),);
      })),
      customsizedbox(context , height: Sizes.size20),
       registrationsubtitle(context, text: 'Add New'),
      customsizedbox(context , height: Sizes.size10),
      Obx(() => ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount:addnewbankcontroller.addnewbankcard.length,
      shrinkWrap: true,
      itemBuilder: (context , index){
        return paymentmethod(context,
        
         onTap: addnewbankcontroller.addnewbankcard[index].onTap,
         title: addnewbankcontroller.addnewbankcard[index].title.toString(), 
        leading: addnewbankcontroller.addnewbankcard[index].leading.toString(),);
      })),
      ],),
    );
  }
  else if  (orientation == Orientation.landscape){
      return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
            customsizedbox(context , height: Sizes.size30),
        registrationsubtitle(context, text: 'Payment method'),
        customsizedbox(context , height: Sizes.size10),
registrationsubtitle(context, text: 'Add New'),
customsizedbox(context , height: Sizes.size10),
        Obx(() => ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: withdrawamountcontroller.withdrawpaymentcard.length,
      shrinkWrap: true,
      itemBuilder: (context , index){
        return paymentmethod(context,
         onTap: withdrawamountcontroller.withdrawpaymentcard[index].onTap,
         title: withdrawamountcontroller.withdrawpaymentcard[index].title.toString(), 
        leading: withdrawamountcontroller.withdrawpaymentcard[index].leading.toString(),);
      })),
      customsizedbox(context , height: Sizes.size20),
       registrationsubtitle(context, text: 'Add New'),
      customsizedbox(context , height: Sizes.size10),
      Obx(() => ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount:addnewbankcontroller.addnewbankcard.length,
      shrinkWrap: true,
      itemBuilder: (context , index){
        return paymentmethod(context, 
        
        onTap: addnewbankcontroller.addnewbankcard[index].onTap,
        title: addnewbankcontroller.addnewbankcard[index].title.toString(), 
        leading: addnewbankcontroller.addnewbankcard[index].leading.toString(),);
      })),
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