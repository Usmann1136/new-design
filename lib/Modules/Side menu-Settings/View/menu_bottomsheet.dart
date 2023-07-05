 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/Components/app_bar.dart';

import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Module/Side%20menu-Settings/View/Components/close_icon.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/font_style.dart';
import 'package:tour_easy2/Utils/theme/size.dart';

import '../../Home/Home Page/View/Components/bottom_options.dart';

Future<dynamic> sidemenubottomsheet(BuildContext context){
  return  showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return FractionallySizedBox(
                  heightFactor: 1, // Adjust this value to cover the desired screen height
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.sizeOf(context).width*1,
                    child: Column(
                      children: [
                       CustomAppBar(leading: closeicon(context) , 
                       
                       fontSize: TextStyles.fontSize20,
                       
                       titlecolor: AppColor.blackcolor,
                       ),
                customsizedbox(context, height: Sizes.size25),
                       bottomsheetoptions(context, bottomsheetoptions: 'Profile', onTap: (){
                        Get.toNamed(RoutesName.profilescreen);
                       }),
                       customsizedbox(context, height: Sizes.size30),
                       bottomsheetoptions(context, bottomsheetoptions: 'Listings', onTap: (){
                        Get.toNamed(RoutesName.listingscreen);
                       }),
                        customsizedbox(context, height: Sizes.size30),
                       bottomsheetoptions(context, bottomsheetoptions: 'Wallet', onTap: (){
                        Get.toNamed(RoutesName.walletscreen);
                       }),
                        customsizedbox(context, height: Sizes.size30),
                       bottomsheetoptions(context, bottomsheetoptions: 'Contact Us', onTap: (){
                      Get.toNamed(RoutesName.contactusscreen);
                       }),
                        customsizedbox(context, height: Sizes.size30),
                       bottomsheetoptions(context, bottomsheetoptions: 'Term & Conditions', onTap: (){
                        Get.toNamed(RoutesName.termandconditionsscreen);
                       }),
                        customsizedbox(context, height: Sizes.size30),
                       bottomsheetoptions(context, bottomsheetoptions: 'Privacy Policy', onTap: (){
                         Get.toNamed(RoutesName.privacypolicyscreen);
                       }),
                        customsizedbox(context, height: Sizes.size30),
                        bottomsheetoptions(context, bottomsheetoptions: 'Log Out' , 
                        
                        color: AppColor.logoutcolor,
                        onTap: (){
                          Get.toNamed(RoutesName.signinscreen);
                        }),
                       

                      ],
                    ),
                  ),
                );
              }
  );
}