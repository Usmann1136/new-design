import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Chat/View%20Model/chat_view_model.dart';
import 'package:tour_easy2/Module/Chat/View/Components/chat_tile.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final  chatcontroller = Get.put(ChatViewModel());
    return Scaffold(
      appBar: CustomAppBar(leading: LeadingIconAnimation() , title: 'Messaging', 
      fontSize: TextStyles.fontSize20,
      titlecolor: AppColor.blackcolor,),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait ){
          return Container(
            height: MediaQuery.sizeOf(context).height*1,
             width: MediaQuery.sizeOf(context).width*1,
             child: SingleChildScrollView(
              physics: ScrollPhysics(),
               child: Column(children: [
                customsizedbox(context , height: Sizes.size20),
               Obx(() =>  ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: chatcontroller.chatviewcard.length,
               itemBuilder: (context , index){
               return chattile(context,
               
                messangerimage: chatcontroller.chatviewcard[index].messangerimage.toString(),
                
                 messagecount: chatcontroller.chatviewcard[index].messagecount.toString(), 
                 messangername: chatcontroller.chatviewcard[index].messangername.toString(), 
                 message: chatcontroller.chatviewcard[index].message.toString(),
                 onTap: () {
                
                   Get.toNamed(RoutesName.inboxscreen,
                  arguments: [

                    chatcontroller.chatviewcard[index].messangerimage.toString(),
                    chatcontroller.chatviewcard[index].messangername.toString(),
                  ]
                   );
                 },
                 messagecountcolor: chatcontroller.chatviewcard[index].messagecountcolor,
                 
                 );
             })),
             customsizedbox(context , height: Sizes.size40),
           
             
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
                customsizedbox(context , height: Sizes.size20),
               Obx(() =>  ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: chatcontroller.chatviewcard.length,
               itemBuilder: (context , index){
               return chattile(context,
               
                messangerimage: chatcontroller.chatviewcard[index].messangerimage.toString(),
                
                 messagecount: chatcontroller.chatviewcard[index].messagecount.toString(), 
                 messangername: chatcontroller.chatviewcard[index].messangername.toString(), 
                 message: chatcontroller.chatviewcard[index].message.toString(),
                 onTap: () {
                
                   Get.toNamed(RoutesName.inboxscreen,
                  arguments: [

                    chatcontroller.chatviewcard[index].messangerimage.toString(),
                    chatcontroller.chatviewcard[index].messangername.toString(),
                  ]
                   );
                 },
                 messagecountcolor: chatcontroller.chatviewcard[index].messagecountcolor,
                 
                 );
             })),
             customsizedbox(context , height: Sizes.size40),
           
             
               ],),
             ),
          );
        }
        else {
           return Container();
        }
      }),
    );

  
  }
}