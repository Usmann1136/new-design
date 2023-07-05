import 'package:get/get.dart';
import 'package:tour_easy2/Module/Notification/Model/notication_model.dart';

class TodayNotificationViewModel extends GetxController{
final todaynotificationcard =<NotificationModel> [].obs;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }

  void loadmodeldata(){
todaynotificationcard.value =[
  NotificationModel(notification: 'Your agent have started the job at 11:10 am', notificationimage: 'images/Ellipse 11.png'),
   NotificationModel(notification: 'Your agent have successfully done your listing', notificationimage: 'images/Ellipse 22.png'),
   NotificationModel(notification: 'Your agent have successfully done your listing', notificationimage: 'images/Ellipse 33.png'),
   


];
  }
}