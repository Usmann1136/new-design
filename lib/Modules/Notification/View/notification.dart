import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Notification/View%20Model/today_notification_view_model.dart';
import 'package:tour_easy2/Module/Notification/View%20Model/yesterday_notification_view_model.dart';
import 'package:tour_easy2/Module/Notification/View/Components/notification_tile.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/liscene_box.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/size.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todaynotificationcontroller = Get.put(TodayNotificationViewModel());
    final yesterdaynotificationcontroller = Get.put(YesterdayNotificationViewModel());
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation() , title: 'Notification',titlecolor: AppColor.blackcolor, fontSize: 20,),
       body: OrientationBuilder(builder: (context , orientation){
       if(orientation == Orientation.portrait){
         return Container(
           height: MediaQuery.sizeOf(context).height*1,
       
       width: MediaQuery.sizeOf(context).width*1,
           child: SingleChildScrollView(
             physics: ScrollPhysics(),
             child: Column(children: [
              customsizedbox(context , height: Sizes.size30),
            registrationsubtitle(context, text: 'Today'),
            customsizedbox(context , height: Sizes.size5),
            Obx(() => ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context , index){
              
              return notiftile(context, title: todaynotificationcontroller.todaynotificationcard[index].notification.toString(), 
              
              
              image:  todaynotificationcontroller.todaynotificationcard[index].notificationimage.toString());
            },
            
             separatorBuilder: (context , index){
              return customsizedbox(context , height: Sizes.size10);
             }, itemCount: todaynotificationcontroller.todaynotificationcard.length
             ) ),
              customsizedbox(context , height: Sizes.size20),
            registrationsubtitle(context, text: 'Yesterday'),
            customsizedbox(context , height: Sizes.size5),
            Obx(() => ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context , index){
              
              return notiftile(context, title: yesterdaynotificationcontroller.yesterdaynotificationcard[index].notification.toString(), 
              
              
              image:  yesterdaynotificationcontroller.yesterdaynotificationcard[index].notificationimage.toString());
            },
            
             separatorBuilder: (context , index){
              return customsizedbox(context , height: Sizes.size10);
             }, itemCount: yesterdaynotificationcontroller.yesterdaynotificationcard.length
             ) ),
              customsizedbox(context , height: Sizes.size20),

             ],),
           ),
         );
       }
       else if (orientation == Orientation.landscape){
           return Container(
           height: MediaQuery.sizeOf(context).height*1,
       
       width: MediaQuery.sizeOf(context).width*1,
           child: SingleChildScrollView(
            physics: ScrollPhysics(),
             child: Column(children: [
             customsizedbox(context , height: Sizes.size30),
            registrationsubtitle(context, text: 'Today'),
            customsizedbox(context , height: Sizes.size5),
            Obx(() => ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context , index){
              
              return notiftile(context, title: todaynotificationcontroller.todaynotificationcard[index].notification.toString(), 
              
              
              image:  todaynotificationcontroller.todaynotificationcard[index].notificationimage.toString());
            },
            
             separatorBuilder: (context , index){
              return customsizedbox(context , height: Sizes.size10);
             }, itemCount: todaynotificationcontroller.todaynotificationcard.length
             ) ),
              customsizedbox(context , height: Sizes.size20),
            registrationsubtitle(context, text: 'Yesterday'),
            customsizedbox(context , height: Sizes.size5),
            Obx(() => ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context , index){
              
              return notiftile(context, title: yesterdaynotificationcontroller.yesterdaynotificationcard[index].notification.toString(), 
              
              
              image:  yesterdaynotificationcontroller.yesterdaynotificationcard[index].notificationimage.toString());
            },
            
             separatorBuilder: (context , index){
              return customsizedbox(context , height: Sizes.size10);
             }, itemCount: yesterdaynotificationcontroller.yesterdaynotificationcard.length
             ) ),
              customsizedbox(context , height: Sizes.size20),

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