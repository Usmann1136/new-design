import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../View Model/privacy_policy_view_model.dart';
import 'Components/dummy_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tmcontroller =  Get.put(PrivacyPolicyViewModel());
    return Scaffold(
        appBar: CustomAppBar(leading: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: LeadingIconAnimation(),
      ) , title: 'Privacy Policy of\nTour Ease',
      
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