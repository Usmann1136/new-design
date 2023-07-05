import 'package:get/get.dart';
import 'package:tour_easy2/Module/Profile/Model/profile_option_model.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

class ProfileOptionsViewModel extends GetxController{
  final profileoptionscard = <ProfileOptionsModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    profileoptionscard.value =[
      ProfileOptionsModel(profileoption: 'My Listings' , onTap: (){
        Get.toNamed(RoutesName.listingscreen);
      }),
       ProfileOptionsModel(profileoption: 'Wallet' , onTap: (){
        Get.toNamed(RoutesName.walletscreen);
       }),
       ProfileOptionsModel(profileoption: 'My Videos' , onTap: (){
          Get.toNamed(RoutesName.myvideoscreen);
       }),
       ProfileOptionsModel(profileoption: 'Add Card or bank' , onTap: (){
         Get.toNamed(RoutesName.addbankscreen);
       }),
       ProfileOptionsModel(profileoption: 'Reviews' , onTap: (){
        Get.toNamed(RoutesName.reviewscreen);
       }),
    ];
    
  }
}