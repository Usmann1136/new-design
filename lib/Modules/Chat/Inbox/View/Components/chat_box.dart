
import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Chat/Inbox/View/Components/polygon_painter.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../../Utils/theme/size.dart';
import '../../../../Registration/Pending/View/Components/custom_sizedbox.dart';

Widget  chatbox (BuildContext context , {required String text , Widget? moreicon ,required String time }){
  return   
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
              
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                       CustomPaint(
                        painter: PolygonPainter(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: Sizes.size20),
                        child: Container(
                        
                          width: MediaQuery.sizeOf(context).width*.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                           
                              topRight: Radius.circular(Sizes.size10),
                              bottomRight: Radius.circular(Sizes.size10),
                              bottomLeft: Radius.circular(Sizes.size10),
                            ),
                        color: AppColor.blackcolor,
                          ),    
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: Sizes.size15 , horizontal: Sizes.size15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           
                                textWidget(text, AppColor.scaffoldcolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left, TextStyles.ubunturegular)
                          ],),
                        ),),
                      ),
                    ],
                  ),
                   Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.size27),
              child: textWidget(time, AppColor.blackcolor, TextStyles.fontWeight400, Sizes.size9, TextAlign.left, TextStyles.ubunturegular),
                  ),
                ],
              ),
                 
               
               
              if (moreicon != null) moreicon,
            ],
          ),
        );
        
          
            
        





}


Widget  secondarychatbox (BuildContext context , {required String text ,
Widget? moreicon2,
MainAxisAlignment mainalignment = MainAxisAlignment.start,
MainAxisAlignment columnmainalignment = MainAxisAlignment.start,
CrossAxisAlignment columncrossalignment = CrossAxisAlignment.start,
 Widget? moreicon , }){
  return   
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size45),
          child: Row(
            mainAxisAlignment: mainalignment,
            children: [
               if (moreicon2 != null) moreicon2,
              Column(
                  mainAxisAlignment: columnmainalignment,
                  crossAxisAlignment: columncrossalignment,
                  children: [
                    
                    Container(
                    
                      width: MediaQuery.sizeOf(context).width*.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Sizes.size10),
                          topRight: Radius.circular(Sizes.size10),
                          bottomRight: Radius.circular(Sizes.size10),
                          bottomLeft: Radius.circular(Sizes.size10),
                        ),
                    color: AppColor.blackcolor,
                      ),    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: Sizes.size15 , horizontal: Sizes.size15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       
                            textWidget(text, AppColor.scaffoldcolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left, TextStyles.ubunturegular)
                      ],),
                    ),),
                      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.size8),
                    child: textWidget('9:08am', AppColor.blackcolor, TextStyles.fontWeight400, Sizes.size9, TextAlign.left, TextStyles.ubunturegular),
                        ),
                  ],
                ),
                 if (moreicon != null) moreicon,
            ],
          ),
          );
        
          
            
        





}
Widget  chatbox2 (BuildContext context , {required String text ,
 Widget? image,

 Widget? moreicon ,required String time }){
  return   
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.end,
                          
            children: [
     if (moreicon != null) moreicon,
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    
                  Stack(
                  
                    children: [
                        Padding(
                        padding: const EdgeInsets.only(left: Sizes.size240),
                        child: CustomPaint(
                          painter: PolygonPainter2(),
                                             ),
                      ),
                      Container(
                      
                        width: MediaQuery.sizeOf(context).width*.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(Sizes.size10),
                          
                            bottomRight: Radius.circular(Sizes.size10),
                            bottomLeft: Radius.circular(Sizes.size10),
                          ),
                      color: AppColor.splashtitlecolor,
                        ),    
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: Sizes.size10 , horizontal: Sizes.size10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                     if (image != null) image,
                     customsizedbox(context , height: Sizes.size5),
                              textWidget(text, AppColor.scaffoldcolor, TextStyles.fontWeight400, TextStyles.fontSize10, TextAlign.left, TextStyles.ubunturegular)
                        ],),
                      ),),
                     
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: Sizes.size30),
                     child: textWidget(time, AppColor.blackcolor, TextStyles.fontWeight400, Sizes.size9, TextAlign.left, TextStyles.ubunturegular),
                   ),
                ],
              ),
                 
               
               
              
            ],
          ),
        );
        
          
            
        





}