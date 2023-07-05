import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View%20Model/complete_detail_view_model.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/list_status.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/theme/colors.dart';

import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';

import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import 'Components/agent_tile.dart';
import 'Components/detail_cards.dart';

class CompletedJobDetailScreen extends StatelessWidget {
  const CompletedJobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final detailcardcontroller = Get.put(ComplateDetailViewModel());
    return Scaffold(
       backgroundColor: AppColor.scaffoldcolor,
       appBar: CustomAppBar(leading: LeadingIconAnimation() ,
       
       fontSize: TextStyles.fontSize20,
       title: 'Listings',titlecolor: AppColor.blackcolor,),
 body:  OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait) {
          return Container(
              height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        
          physics: ScrollPhysics(),
        child: Column(children: [
              
                  customsizedbox(context, height: Sizes.size40),
                  liststatus(text: 'Completed'),
                   customsizedbox(context, height: Sizes.size20),
          
             Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: Sizes.size25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:detailcardcontroller.complateddetailcards.length ,
           itemBuilder: (context , index){
             return listeddetailcard(context,   title: detailcardcontroller.complateddetailcards[index].title.toString(),
              paragraph1: detailcardcontroller.complateddetailcards[index].paragraph1.toString(), paragraph2: detailcardcontroller.complateddetailcards[index].paragraph3.toString(), paragraph3: detailcardcontroller.complateddetailcards[index].paragraph3.toString(), clienttitle:  detailcardcontroller.complateddetailcards[index].clienttitle.toString(), clientname:  detailcardcontroller.complateddetailcards[index].clientname.toString(), address:  detailcardcontroller.complateddetailcards[index].address.toString(), time:  detailcardcontroller.complateddetailcards[index].time.toString(), location:  detailcardcontroller.complateddetailcards[index].location.toString(),
               timer:  detailcardcontroller.complateddetailcards[index].timer.toString(), dollarsign:  detailcardcontroller.complateddetailcards[index].dollarsign.toString(), price:  detailcardcontroller.complateddetailcards[index].price.toString(),);
           } ),),
               customsizedbox(context, height: Sizes.size20),
            agenttile(context , image: ''),
  customsizedbox(context, height: Sizes.size80),
      ],),),
          );
        }
        else if(orientation == Orientation.landscape){
          return Container(
              height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
          physics: ScrollPhysics(),
        child: Column(children: [
                 customsizedbox(context, height: Sizes.size40),
                 liststatus(text: 'Completed'),
             customsizedbox(context, height: Sizes.size20),
        
              Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:detailcardcontroller.complateddetailcards.length ,
           itemBuilder: (context , index){
             return listeddetailcard(context,   title: detailcardcontroller.complateddetailcards[index].title.toString(),
              paragraph1: detailcardcontroller.complateddetailcards[index].paragraph1.toString(), paragraph2: detailcardcontroller.complateddetailcards[index].paragraph3.toString(), paragraph3: detailcardcontroller.complateddetailcards[index].paragraph3.toString(), clienttitle:  detailcardcontroller.complateddetailcards[index].clienttitle.toString(), clientname:  detailcardcontroller.complateddetailcards[index].clientname.toString(), address:  detailcardcontroller.complateddetailcards[index].address.toString(), time:  detailcardcontroller.complateddetailcards[index].time.toString(), location:  detailcardcontroller.complateddetailcards[index].location.toString(),
               timer:  detailcardcontroller.complateddetailcards[index].timer.toString(), dollarsign:  detailcardcontroller.complateddetailcards[index].dollarsign.toString(), price:  detailcardcontroller.complateddetailcards[index].price.toString(),);
           } ),),
             customsizedbox(context, height: Sizes.size50),
             agenttile(context , image: ''),
              customsizedbox(context, height: Sizes.size80),
      ],),),
          );
        }
        else {
            return Container();
        }
      }),

    );
  }
}