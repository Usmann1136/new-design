
import 'package:flutter/material.dart';




import 'package:tour_easy2/Module/Listings/View/completed_job.dart';
import 'package:tour_easy2/Module/Listings/View/in_progress.dart';
import 'package:tour_easy2/Module/Listings/View/listed_job.dart';

import 'package:tour_easy2/Utils/theme/colors.dart';








import '../../../Utils/theme/font_style.dart';
import '../../../Utils/theme/size.dart';
import '../../Registration/Pending/View/Components/custom_sizedbox.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        
        backgroundColor: AppColor.scaffoldcolor,
      
        body: Container(
             height: MediaQuery.sizeOf(context).height*1,
             width: MediaQuery.sizeOf(context).width*1,
      
      
             child: Column(children: [

              Expanded(child:  TabBarView(children: [
                      ListedJob(),
                      InProgressJob(),
                      CompletedJob(),
                    ]),
              ),
           

   Align(
    alignment: Alignment.bottomCenter,
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child: TabBar(
           
        unselectedLabelColor: AppColor.attoureasycolor ,
        unselectedLabelStyle: TextStyle( fontFamily: TextStyles.ubuntumedium ,
           
         fontSize: TextStyles.fontSize12 ,
         
          fontWeight: FontWeight.w500), 
        labelStyle: TextStyle( fontFamily: TextStyles.ubuntumedium ,
           
         fontSize: TextStyles.fontSize12 ,
         
          fontWeight: FontWeight.w500),
        labelColor: AppColor.blackcolor,
        indicatorColor: AppColor.splashtitlecolor,
       
       
       indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
         
         borderRadius: BorderRadius.circular(10),
         
         borderSide: BorderSide(
         
           width: 6, 
           color:AppColor.splashtitlecolor, 
           
         ),
         insets: EdgeInsets.only( right:40 , left: 5), 
       ),
       
        
        tabs: [
        
        
                  
                      Tab(text: 'Listed Job'),
                
                  Tab(text: 'In Progress'),
                  
                  Tab(text: 'Completed' ,   ),
                  
       ]),
     ),
   ),
  customsizedbox( context ,height:  Sizes.size5,),
            ],
          ),
            
    
             ),
        )
      
        
      );
  }
}