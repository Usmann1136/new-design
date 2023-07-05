import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:tour_easy2/Utils/theme/colors.dart';

import '../View Model/home_page_view_model.dart';

class HomeScreen extends GetView<HomePageController> {
 HomeScreen({Key? key}) : super();
final controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: AppColor.scaffoldcolor,

      body: Obx(() => controller.pages[controller.pageIndex.value]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20 , right: 20 , bottom: 10),
        child: Container(
          height: 76,
          width: MediaQuery.sizeOf(context).width*1,
          decoration: BoxDecoration(
            color: AppColor.bottombarcolor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () => controller.changePageIndex(0),
                icon: Obx(
                  () => Image.asset('images/bx_home.png' ,
                  height: 24,
                  width: 24,
                   color: controller.pageIndex == 0 ? AppColor.splashtitlecolor : AppColor.inactivedotcolor,) 
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () => controller.changePageIndex(1),
                icon: Obx(
                  () => Icon(
                    CupertinoIcons.list_bullet,
                    color: controller.pageIndex == 1 ? AppColor.splashtitlecolor : AppColor.inactivedotcolor,
                    size: 24,
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () => controller.changePageIndex(2),
                icon: Obx(
                  () => Icon(
                    Icons.add_box_outlined,
                    color: controller.pageIndex == 2 ? AppColor.splashtitlecolor : AppColor.inactivedotcolor,
                    size: 24,
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () => controller.changePageIndex(3),
                icon: Obx(
                  () =>  Image.asset('images/dollar-sign.png' ,
                  height: 24,
                  width: 24,
                   color: controller.pageIndex == 3 ? AppColor.splashtitlecolor : AppColor.inactivedotcolor,) 
                ),
              ),
               IconButton(
                enableFeedback: false,
                onPressed: () => controller.changePageIndex(4),
                icon: Obx(
                  () => Image.asset('images/user.png' ,
                  height: 24,
                  width: 24,
                   color: controller.pageIndex == 4 ? AppColor.splashtitlecolor : AppColor.inactivedotcolor,) 
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
