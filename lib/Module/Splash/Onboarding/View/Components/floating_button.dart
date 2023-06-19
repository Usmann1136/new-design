import 'package:flutter/material.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';


  Widget floatingbutton(BuildContext context , VoidCallback onPressed) {
    return SizedBox(
      height: 74,
      width: 74,
      
      child: FloatingActionButton(
        
        onPressed: onPressed,
    
      backgroundColor: AppColor.splashtitlecolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37.5)),
      child: Icon(Icons.chevron_right_outlined , color: AppColor.scaffoldcolor, ),
      ),
    );
  }
