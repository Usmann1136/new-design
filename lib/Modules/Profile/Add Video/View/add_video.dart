import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/Components/button.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View%20Model/animated_leading_icon.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';
import 'package:tour_easy2/Module/Profile/Add%20Video/View/Components/video_box.dart';
import 'package:tour_easy2/Module/Profile/Add%20Video/View/Components/video_title_text_field.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/registration_subtitle.dart';
import 'package:tour_easy2/Module/Registration/View/Components/text_field_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../Utils/routes/routes_name.dart';

class AddVideoScreen extends StatelessWidget {
  const AddVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading:LeadingIconAnimation() , title: 'Add Video', titlecolor: AppColor.blackcolor, fontSize: TextStyles.fontSize20, ),
  
  
    body: OrientationBuilder(builder: (context , orientation){
  if(orientation == Orientation.portrait){
    return Container(
         height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: SingleChildScrollView(
        child: Column(
        
          children: [
          registrationsubtitle(context, text: 'Add Video'),
          videobox(context),
          customsizedbox(context , height: Sizes.size20),
          registrationsubtitle(context, text: 'Video Title'),
          videotitlefield(context, false),
          customsizedbox(context , height: Sizes.size140),
          
           primarybutton(context ,text: 'Add Video' , onTap: (){
           Get.toNamed(RoutesName.homescreen);
           }),
           customsizedbox(context , height: Sizes.size30)
            ],),
      ),
    

    );
  }
  else if(orientation == Orientation.landscape){
      return Container(
         height: MediaQuery.sizeOf(context).height*1,
      
      width: MediaQuery.sizeOf(context).width*1,
      child: Column(
      
        children: [
   textfieldtitle(context, title: 'Add Video'),
      videobox(context),
      customsizedbox(context , height: Sizes.size20),
    textfieldtitle(context, title: 'Video Title'),
      videotitlefield(context, false),
      customsizedbox(context , height: Sizes.size140),
     primarybutton(context ,text: 'Add Video' , onTap: (){
     Get.toNamed(RoutesName.homescreen);
     }),
     customsizedbox(context , height: Sizes.size30)
    
     
      
        ]
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