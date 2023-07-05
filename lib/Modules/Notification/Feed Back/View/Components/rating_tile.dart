import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';

import '../../../../../Utils/theme/size.dart';

Widget ratingtitle (BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Sizes.size25),
    child: Container(
      width: MediaQuery.sizeOf(context).width*1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size20),
        color: AppColor.scaffoldcolor,
       boxShadow: [
                    BoxShadow(
                      color:AppColor.secondaryblackcolor.withOpacity(.1),
                      offset: Offset(0, 1),
                      blurRadius: 8
                    ),
                  ],
                  
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
          textWidget('Ratings', AppColor.blackcolor, TextStyles.fontWeight400, TextStyles.fontSize16, TextAlign.center, TextStyles.ubuntulight),
        customsizedbox(context , height: Sizes.size20),
        
RatingBar(
  minRating: 1,
  initialRating: 1,
  itemPadding: EdgeInsets.symmetric(horizontal:Sizes.size8),
  direction: Axis.horizontal,
  allowHalfRating: true,
  itemCount: 5,

  onRatingUpdate: (rating) {},
  ratingWidget: RatingWidget(
    full: Icon(
      Icons.star_outlined,
      size: 30,
      color:AppColor.ambercolor,
    
    ),
    half: Icon(
      Icons.star_half,
      size: 30,
      color:AppColor.ambercolor,
       
    ),
    empty: SvgPicture.asset('icons/border star.svg' , 
         ),

),
  unratedColor: AppColor.scaffoldcolor,
),

          ]
            ),
      ),
    ),
  );
}