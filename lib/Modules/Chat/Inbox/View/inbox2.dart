import 'package:flutter/material.dart';

import 'package:tour_easy2/Module/Chat/Inbox/View/Components/jobdone.dart';


import '../../../../Utils/theme/size.dart';
import '../../../Forgot Password/View Model/animated_leading_icon.dart';
import '../../../Registration/Pending/View/Components/custom_sizedbox.dart';
import '../../../Splash/Onboarding/View/Components/onboarding_images.dart';

import 'Components/appbar.dart';
import 'Components/chat_box.dart';

import 'Components/more_icon.dart';

import 'Components/today_divider.dart';

class Inbox2Screen extends StatelessWidget {
  const Inbox2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: InboxAppBar(leading: LeadingIconAnimation(),
        
         image:'images/Ellipse 10.png' , title:  'Wade Warren' ,),
      body: OrientationBuilder(builder: (context , orientation){
        if(orientation == Orientation.portrait){ 
          return Container(
  height: MediaQuery.sizeOf(context).height*1,
  width: MediaQuery.sizeOf(context).width*1,
  child: Column(
    
  
    children: [
    Expanded(child: SingleChildScrollView(
      child: Column(children: [
        customsizedbox(context , height: Sizes.size20), 
    todaydivider(context),
       
      customsizedbox(context , height: Sizes.size20), 
       chatbox(context, text: 'Hello Mahnoor!\nI m looking for your clients, i have reached to the meeting point',
    time: '9:00am' ,
     moreicon: moreicon(context)   
       
       ),
        
        customsizedbox(context , height: Sizes.size10), 
        chatbox2(context, text: 'Okay!!\nLet me inform them', time: '9:02am' ,
         moreicon: moreicon(context)),
        customsizedbox(context , height: Sizes.size10), 
          chatbox(context, text: 'Ah Great! Thank you' , time: '9:03am'  , moreicon: moreicon(context)),
          customsizedbox(context , height: Sizes.size10), 
      chatbox2(context, text: 'This is the house , you can find it', time: '9:02am' , image: onboardingimagewidget(context, 'images/HM banner 1.png' , width: MediaQuery.sizeOf(context).width*.6)
        ),
        customsizedbox(context , height: Sizes.size10), 
        secondarychatbox(context,
        
        mainalignment: MainAxisAlignment.end,
        columncrossalignment: CrossAxisAlignment.end,
        columnmainalignment: MainAxisAlignment.end,
        moreicon2: moreicon(context),
         text:'YOu can contact them with providing number in listing'),
          chatbox(context, text: 'Perfect!!' , time: ''),
      customsizedbox(context , height: Sizes.size10), 
     secondarychatbox(context, text: 'I m going to contact her.' , moreicon: moreicon(context)  ),
     customsizedbox(context , height: Sizes.size10), 
chatbox2(context, text: 'Good to know', time: '9:02am' ,
         moreicon: moreicon(context)),
         customsizedbox(context , height: Sizes.size30), 
      ],),
    )),
        jobdone(context)
          
      ],
    ),
      
);
        
        }
        else if (orientation == Orientation.landscape){
          return Container(
  height: MediaQuery.sizeOf(context).height*1,
  width: MediaQuery.sizeOf(context).width*1,
  child: Column(
    
  
    children: [
    Expanded(child: SingleChildScrollView(
      child: Column(children: [
        customsizedbox(context , height: Sizes.size20), 
    todaydivider(context),
       
      customsizedbox(context , height: Sizes.size20), 
       chatbox(context, text: 'Hello Mahnoor!\nI m looking for your clients, i have reached to the meeting point',
    time: '9:00am' ,
     moreicon: moreicon(context)   
       
       ),
        
        customsizedbox(context , height: Sizes.size10), 
        chatbox2(context, text: 'Okay!!\nLet me inform them', time: '9:02am' ,
         moreicon: moreicon(context)),
        customsizedbox(context , height: Sizes.size10), 
          chatbox(context, text: 'Ah Great! Thank you' , time: '9:03am'  , moreicon: moreicon(context)),
          customsizedbox(context , height: Sizes.size10), 
      chatbox2(context, text: 'This is the house , you can find it', time: '9:02am' , image: onboardingimagewidget(context, 'images/HM banner 1.png' , width: MediaQuery.sizeOf(context).width*.6)
        ),
        customsizedbox(context , height: Sizes.size10), 
        secondarychatbox(context,
        
        mainalignment: MainAxisAlignment.end,
        columncrossalignment: CrossAxisAlignment.end,
        columnmainalignment: MainAxisAlignment.end,
        moreicon2: moreicon(context),
         text:'YOu can contact them with providing number in listing'),
          chatbox(context, text: 'Perfect!!' , time: ''),
      customsizedbox(context , height: Sizes.size10), 
     secondarychatbox(context, text: 'I m going to contact her.' , moreicon: moreicon(context)  ),
     customsizedbox(context , height: Sizes.size10), 
chatbox2(context, text: 'Good to know', time: '9:02am' ,
         moreicon: moreicon(context)),
         customsizedbox(context , height: Sizes.size30), 
      ],),
    )),
         
          
      ],
    ),
      
);
        }
        else {
          return Container();
        }
      }
      )
    );
  }
}