import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/View/Components/splash_title.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

import '../../../../Utils/theme/font_style.dart';
import '../../Model/choose_card_models.dart';

class GetStartedScreen extends StatelessWidget {
   GetStartedScreen({super.key});
  List<ChooseCards> choosecards =[
    ChooseCards(centertitle: 'As a Real Estate Agent'),
    ChooseCards(centertitle: 'As a Showing Agent'
    
    ),
     ChooseCards(centertitle: 'Virtual Properties Visit'
    
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      body: Container
        (
        child: Column(
          children: [
 SizedBox(height:99, ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: textWidget('Choose how you want to continue with Tour Ease', AppColor.blackcolor, FontWeight.w400, 24, TextAlign.left,TextStyles.ubunturegular),
            ),
            SizedBox(height:33, ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context , index){
                return SizedBox(height: 20,);
              },
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: choosecards.length,
              shrinkWrap: true,
              itemBuilder: (context , index){
return InkWell(
  onTap: (){} ,
  child:   Container( 
  
    width: MediaQuery.of(context).size.width*1,
  
    decoration: BoxDecoration( 
  
      
  
      border: Border.all(color: AppColor.blackcolor),
  
      borderRadius: BorderRadius.circular(20),
  
    
  
    ),
  
    child: Padding(
      padding: const EdgeInsets.only(top: 40 , bottom: 40),
      child: Center(child: Text(choosecards[index].centertitle.toString())),
    ),),
);
            })
          ],
        ),
        
        )
    );
        
    
  }
}