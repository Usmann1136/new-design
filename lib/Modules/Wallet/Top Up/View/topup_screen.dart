import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Wallet/Top%20Up/View/Components/paymentmethod.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../View Model/addpayment_method_view_model.dart';
import '../View Model/payment_method_view_model.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
       final paymentmethodcontroller = Get.put(PaymentMethodViewModel());
    final addmethodcontroller = Get.put(AddMethodViewModel());
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
        physics: ScrollPhysics(),
        child: Column(children: [
           customsizedbox(context , height: Sizes.size30),
        registrationsubtitle(context, text: 'Payment method'),
        customsizedbox(context , height: Sizes.size10),
          Obx(() =>  ListView.builder(
           
        
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:paymentmethodcontroller.paymentmethodcard.length ,
           itemBuilder: (context , index){
             return paymentmethod(context,
             onTap: paymentmethodcontroller.paymentmethodcard[index].onTap,
              leading: paymentmethodcontroller.paymentmethodcard[index].leading.toString(), 
             title: paymentmethodcontroller.paymentmethodcard[index].title.toString(),
            
             );
           } ),),
customsizedbox(context , height: Sizes.size10),
registrationsubtitle(context, text: 'Add New'),
customsizedbox(context , height: Sizes.size10),
   Obx(() =>  ListView.separated(
           separatorBuilder: (context , index){
            return customsizedbox( context , height: Sizes.size20);
           },
        
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:addmethodcontroller.addpaymentmethodcard.length ,
           itemBuilder: (context , index){
             return paymentmethod(context,
        
             onTap: addmethodcontroller.addpaymentmethodcard[index].onTap,
              leading: addmethodcontroller.addpaymentmethodcard[index].leading.toString(), 
             title: addmethodcontroller.addpaymentmethodcard[index].title.toString(),
             
             );
           } ),),
        ],),
      ),
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
          Obx(() =>  ListView.builder(
           
        
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:paymentmethodcontroller.paymentmethodcard.length ,
           itemBuilder: (context , index){
             return paymentmethod(
              
              
              context, 
              
          onTap: paymentmethodcontroller.paymentmethodcard[index].onTap,
              leading: paymentmethodcontroller.paymentmethodcard[index].leading.toString(), 
             title: paymentmethodcontroller.paymentmethodcard[index].title.toString(), 
                          );
           } ),),
customsizedbox(context , height: Sizes.size10),
registrationsubtitle(context, text: 'Add New'),
customsizedbox(context , height: Sizes.size10),
   Obx(() =>  ListView.separated(
           separatorBuilder: (context , index){
            return customsizedbox( context , height: Sizes.size20);
           },
        
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:addmethodcontroller.addpaymentmethodcard.length ,
           itemBuilder: (context , index){
             return paymentmethod(context,
             
            onTap: addmethodcontroller.addpaymentmethodcard[index].onTap,
              leading: addmethodcontroller.addpaymentmethodcard[index].leading.toString(), 
             title: addmethodcontroller.addpaymentmethodcard[index].title.toString(),
        
             );
           } ),),
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