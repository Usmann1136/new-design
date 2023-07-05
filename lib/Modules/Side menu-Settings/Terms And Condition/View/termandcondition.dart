import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';

import 'package:tour_easy2/Module/Side%20menu-Settings/Terms%20And%20Condition/View/Components/dummy_text.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../View Model/privacy_policy_view_model.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    final tmcontroller =  Get.put(PrivacyPolicyViewModel());
    return Scaffold(
      appBar: CustomAppBar(leading: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: LeadingIconAnimation(),
      ) , title: 'Terms & Conditions\nof Tour Ease',
      
      fontSize: 20,
       titlecolor: AppColor.blackcolor,),
         body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){
          return Container(
           height: MediaQuery.sizeOf(context).height*1,
            width: MediaQuery.sizeOf(context).width*1,
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(children: [
customsizedbox(context , height: Sizes.size20),

                Obx(() =>  ListView.separated(
                  separatorBuilder: (context , index){
                    return customsizedbox(context , height: Sizes.size5);
                  },
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

              itemCount: tmcontroller.privacypolicycard.length,
                itemBuilder: (context , index){
                return dummytext(context, dummytext: tmcontroller.privacypolicycard[index].dummytext.toString());
               })),
              
                customsizedbox(context , height: Sizes.size30),
              ],),
            ),
          );
        }
        else if(orientation == Orientation.landscape){
           return Container(
           height: MediaQuery.sizeOf(context).height*1,
            width: MediaQuery.sizeOf(context).width*1,
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(children: [
              customsizedbox(context , height: Sizes.size20),

                Obx(() =>  ListView.separated(
                  separatorBuilder: (context , index){
                    return customsizedbox(context , height: Sizes.size5);
                  },
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

              itemCount: tmcontroller.privacypolicycard.length,
                itemBuilder: (context , index){
                return dummytext(context, dummytext: tmcontroller.privacypolicycard[index].dummytext.toString());
               })),
              
                customsizedbox(context , height: Sizes.size30),
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