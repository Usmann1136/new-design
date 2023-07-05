import 'package:flutter/material.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../../Utils/theme/size.dart';


  Widget floatingbutton(BuildContext context , VoidCallback onPressed) {
    return customsizedbox(
      context,
      height: Sizes.size74,
      width: Sizes.size74,
      
      child: FloatingActionButton(
        
        onPressed: onPressed,
    
      backgroundColor: AppColor.splashtitlecolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37.5)),
      child: Icon(Icons.chevron_right_outlined , color: AppColor.scaffoldcolor, ),
      ),
    );
  }
