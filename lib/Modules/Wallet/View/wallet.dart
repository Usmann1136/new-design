import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Wallet/View%20Model/recent_history_view_model.dart';
import 'package:tour_easy2/Module/Wallet/View/Components/budget.dart';
import 'package:tour_easy2/Module/Wallet/View/Components/recenthistory.dart';
import 'package:tour_easy2/Module/Wallet/View/Components/walletfront.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../Utils/theme/colors.dart';
import '../../Auth/View/Components/app_bar.dart';
import '../../Home/Home Page/View/Components/side_menu.dart';
import '../../Home/View Model/leading_icon_animation.dart';


class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final recenthistorycontroller = Get.put(RecentHistoryViewModel());
    return Scaffold(
      appBar:PrimaryCustomAppBar(leading:sidemenuicon(context), titlecolor: AppColor.blackcolor,
title: 'Wallet',actions: [
  SecondaryLeadIconAnimation(),
  AnimatedbellIcon(),
]) , 
body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
      height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
          customsizedbox(context , height: Sizes.size40),
          registrationsubtitle(context, text: 'Your wallet'),
          customsizedbox(context , height: Sizes.size10),
          walletfront(context),
          customsizedbox(context , height: Sizes.size30),
          registrationsubtitle(context, text: 'Total Spent Budget'),
          customsizedbox(context , height: Sizes.size20),
          totalbudget(context),
          customsizedbox(context , height: Sizes.size40),
           registrationsubtitle(context, text: 'Recent History'),
            customsizedbox(context , height: Sizes.size20),
             Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size10);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:recenthistorycontroller.recenthistorycard.length ,
           itemBuilder: (context , index){
             return recenthistory(context, withdrawortopup: recenthistorycontroller.recenthistorycard[index].withdrawortopup.toString(),
             budget: recenthistorycontroller.recenthistorycard[index].budget.toString(),
              amount: recenthistorycontroller.recenthistorycard[index].amount.toString(),
               dateandtime: recenthistorycontroller.recenthistorycard[index].dateandtime.toString(),
             
                );
           } ),),
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
        physics: ScrollPhysics(),
        child: Column(children: [
          customsizedbox(context , height: Sizes.size40),
          registrationsubtitle(context, text: 'Your wallet'),
          customsizedbox(context , height: Sizes.size10),
          walletfront(context),
          customsizedbox(context , height: Sizes.size30),
          registrationsubtitle(context, text: 'Total Spent Budget'),
          customsizedbox(context , height: Sizes.size20),
          totalbudget(context),
          customsizedbox(context , height: Sizes.size40),
           registrationsubtitle(context, text: 'Recent History'),
            customsizedbox(context , height: Sizes.size20),
             Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size10);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:recenthistorycontroller.recenthistorycard.length ,
           itemBuilder: (context , index){
             return recenthistory(context, withdrawortopup: recenthistorycontroller.recenthistorycard[index].withdrawortopup.toString(),
             budget: recenthistorycontroller.recenthistorycard[index].budget.toString(),
              amount: recenthistorycontroller.recenthistorycard[index].amount.toString(),
               dateandtime: recenthistorycontroller.recenthistorycard[index].dateandtime.toString(),
             
                );
           } ),),
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