import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View%20Model/inprogress_view_model.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/agent_tile.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/Components/list_status.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../Utils/theme/colors.dart';

import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Forgot Password/View/Components/app_bar.dart';

import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import 'Components/detail_cards.dart';

class InProgressJobDetailScreen extends StatelessWidget {
  const InProgressJobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final detailcardcontroller = Get.put(InProgressDetailViewModel());
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
       appBar: CustomAppBar(leading:LeadingIconAnimation()
       
          ,
      
      titlecolor: AppColor.blackcolor,

      fontSize: TextStyles.fontSize20,
       title: 'Listing', ),
     body:  OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait) {

          return Container(
              height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
           customsizedbox(context, height: Sizes.size40),
                
                 liststatus(text: 'In Progress'),
             customsizedbox(context, height: Sizes.size20),
        
              Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 20,);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:detailcardcontroller.inprogressdetailcards.length ,
           itemBuilder: (context , index){
             return listeddetailcard(context,   title: detailcardcontroller.inprogressdetailcards[index].title.toString(),
              paragraph1: detailcardcontroller.inprogressdetailcards[index].paragraph1.toString(), paragraph2: detailcardcontroller.inprogressdetailcards[index].paragraph3.toString(), paragraph3: detailcardcontroller.inprogressdetailcards[index].paragraph3.toString(), clienttitle:  detailcardcontroller.inprogressdetailcards[index].clienttitle.toString(), clientname:  detailcardcontroller.inprogressdetailcards[index].clientname.toString(), address:  detailcardcontroller.inprogressdetailcards[index].address.toString(), time:  detailcardcontroller.inprogressdetailcards[index].time.toString(), location:  detailcardcontroller.inprogressdetailcards[index].location.toString(),
               timer:  detailcardcontroller.inprogressdetailcards[index].timer.toString(), dollarsign:  detailcardcontroller.inprogressdetailcards[index].dollarsign.toString(), price:  detailcardcontroller.inprogressdetailcards[index].price.toString(),);
           } ),),
            
              customsizedbox(context, height: Sizes.size20),
             agenttile(context , image: 'icons/Group 75.svg' , ),
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
                liststatus(text: 'In Progress'),
             customsizedbox(context, height: Sizes.size20),
          
           Obx(() =>  ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 20,);
            },
            padding: EdgeInsets.symmetric(horizontal: 25),
           shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
           itemCount:detailcardcontroller.inprogressdetailcards.length ,
           itemBuilder: (context , index){
             return listeddetailcard(context,   title: detailcardcontroller.inprogressdetailcards[index].title.toString(),
              paragraph1: detailcardcontroller.inprogressdetailcards[index].paragraph1.toString(), paragraph2: detailcardcontroller.inprogressdetailcards[index].paragraph3.toString(), paragraph3: detailcardcontroller.inprogressdetailcards[index].paragraph3.toString(), clienttitle:  detailcardcontroller.inprogressdetailcards[index].clienttitle.toString(), clientname:  detailcardcontroller.inprogressdetailcards[index].clientname.toString(), address:  detailcardcontroller.inprogressdetailcards[index].address.toString(), time:  detailcardcontroller.inprogressdetailcards[index].time.toString(), location:  detailcardcontroller.inprogressdetailcards[index].location.toString(),
               timer:  detailcardcontroller.inprogressdetailcards[index].timer.toString(), dollarsign:  detailcardcontroller.inprogressdetailcards[index].dollarsign.toString(), price:  detailcardcontroller.inprogressdetailcards[index].price.toString(),);
           } ),),
              customsizedbox(context, height: Sizes.size20),
             agenttile(context ,image: 'icons/Group 75.svg'),
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