import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../../../../Utils/theme/colors.dart';
import '../../../../../Utils/theme/font_style.dart';

Widget reviewtile(BuildContext context,{required image , required String text , required String text2 } ){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              Image.asset(image , height: Sizes.size40, width: Sizes.size40,),
              SizedBox(width:Sizes.size5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(text, AppColor.blackcolor,TextStyles.fontWeight400 , TextStyles.fontSize12, TextAlign.left, TextStyles.ubunturegular),
                     textWidget(text2, AppColor.activedotcolor,TextStyles.fontWeight400 , TextStyles.fontSize10, TextAlign.left, TextStyles.ubunturegular),
                    
                  ],
                ),
            ],
          ),
             RatingBar.builder(
             minRating: 4, 
             initialRating: 4,
          
           direction: Axis.horizontal,
           allowHalfRating: true,
           itemCount: 5,
          
                itemSize: 15,
            itemBuilder: (context , _){
            return Icon(
          Icons.star,
          color: AppColor.ambercolor,
             
            );
            
          }, onRatingUpdate: (rating){}),
        ],
        ),
         Padding(
           padding: const EdgeInsets.only(left: 45 , right: 5),
           child: textWidget('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui id iaculis blandit quis vitae pellentesque felis, neque. Accumsan ullamcorper tempus suspendisse id duis. Sit maecenas eu duis tincidunt a.',
           AppColor.blackcolor,TextStyles.fontWeight400 , TextStyles.fontSize8, TextAlign.left, TextStyles.ubunturegular),
         ),
      ]
    )
        );
       
           
        

}