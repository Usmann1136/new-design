import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/agent_waitng.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/detail_cards.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/statuswitheditjob.dart';



import '../../../../Utils/theme/colors.dart';
import '../../../../Utils/theme/font_style.dart';


import '../../../../Utils/theme/size.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../View Model/list_detail_view_model.dart';


class ListedJobDetalScreen extends StatelessWidget {
  const ListedJobDetalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailcardcontroller = Get.put(ListDetailViewModel());
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      appBar: CustomAppBar(leading: LeadingIconAnimation() ,
      fontSize: TextStyles.fontSize20,
      titlecolor: AppColor.blackcolor,
       title: 'Listing', ),
       body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait) {
          return Container(
              height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
                 customsizedbox(context, height: Sizes.size40),
                statuswitheditjob(context),
             
              customsizedbox(context, height: Sizes.size20),
               Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:detailcardcontroller.listdetailcards.length ,
           itemBuilder: (context , index){
             return listeddetailcard(context,   title: detailcardcontroller.listdetailcards[index].title.toString(),
              paragraph1: detailcardcontroller.listdetailcards[index].paragraph1.toString(), paragraph2: detailcardcontroller.listdetailcards[index].paragraph3.toString(), paragraph3: detailcardcontroller.listdetailcards[index].paragraph3.toString(), clienttitle:  detailcardcontroller.listdetailcards[index].clienttitle.toString(), clientname:  detailcardcontroller.listdetailcards[index].clientname.toString(), address:  detailcardcontroller.listdetailcards[index].address.toString(), time:  detailcardcontroller.listdetailcards[index].time.toString(), location:  detailcardcontroller.listdetailcards[index].location.toString(),
               timer:  detailcardcontroller.listdetailcards[index].timer.toString(), dollarsign:  detailcardcontroller.listdetailcards[index].dollarsign.toString(), price:  detailcardcontroller.listdetailcards[index].price.toString(),);
           } ),),

  customsizedbox(context, height: Sizes.size30),
  agentwaiting(context),
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
              
            statuswitheditjob(context),
             customsizedbox(context, height: Sizes.size20),
  
            Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return  customsizedbox(context, height: Sizes.size20);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:detailcardcontroller.listdetailcards.length ,
           itemBuilder: (context , index){
             return listeddetailcard(context,   title: detailcardcontroller.listdetailcards[index].title.toString(),
              paragraph1: detailcardcontroller.listdetailcards[index].paragraph1.toString(), paragraph2: detailcardcontroller.listdetailcards[index].paragraph3.toString(), paragraph3: detailcardcontroller.listdetailcards[index].paragraph3.toString(), clienttitle:  detailcardcontroller.listdetailcards[index].clienttitle.toString(), clientname:  detailcardcontroller.listdetailcards[index].clientname.toString(), address:  detailcardcontroller.listdetailcards[index].address.toString(), time:  detailcardcontroller.listdetailcards[index].time.toString(), location:  detailcardcontroller.listdetailcards[index].location.toString(),
               timer:  detailcardcontroller.listdetailcards[index].timer.toString(), dollarsign:  detailcardcontroller.listdetailcards[index].dollarsign.toString(), price:  detailcardcontroller.listdetailcards[index].price.toString(),);
           } ),),
             
 SizedBox(height: 30,),
  customsizedbox(context, height: Sizes.size30),
         agentwaiting(context),
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