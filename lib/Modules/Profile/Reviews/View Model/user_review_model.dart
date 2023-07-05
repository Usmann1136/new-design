import 'package:get/get.dart';
import 'package:tour_easy2/Module/Profile/Model/review_model.dart';

class UserReviewViewModel extends GetxController{
    final userreviewcard = <UserReviewModel>[].obs;

     @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    userreviewcard.value =[
  UserReviewModel(reviewerimage: 'images/Ellipse 12.png' , reviewername: 'Ralph Edwards' , date: '12/10/2022'),
  UserReviewModel(reviewerimage: 'images/Ellipse  1.png' , reviewername: 'Jane Cooper' , date: '1/15/2022'),
  UserReviewModel(reviewerimage: 'images/22.png' , reviewername: 'Wade Warren' , date: '8/21/2021'),
  UserReviewModel(reviewerimage: 'images/11.png' , reviewername: 'Dianne Russell' , date: '9/4/2021'),
  UserReviewModel(reviewerimage: 'images/22.png' , reviewername: 'Kristin Watson' , date: '9/23/2020'),
  UserReviewModel(reviewerimage: 'images/Ellipse  1.png' , reviewername: 'Jane Cooper' , date: '1/15/2022'),
  UserReviewModel(reviewerimage: 'images/22.png' , reviewername: 'Wade Warren' , date: '8/21/2021'),
    ];
    
  }
}