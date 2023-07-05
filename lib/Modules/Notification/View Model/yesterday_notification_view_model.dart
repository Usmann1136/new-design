import 'package:get/get.dart';
import 'package:tour_easy2/Module/Notification/Model/notication_model.dart';

class YesterdayNotificationViewModel extends GetxController{
final yesterdaynotificationcard =<NotificationModel> [].obs;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }

  void loadmodeldata(){
yesterdaynotificationcard.value =[
  NotificationModel(notification: 'Your agent have successfully done your listing', notificationimage: 'images/Ellipse 88.png'),
   NotificationModel(notification: 'Your agent have successfully done your listing', notificationimage: 'images/Ellipse 44.png'),
   NotificationModel(notification: 'Your agent have successfully done your listing', notificationimage: 'images/Ellipse 55.png'),
  NotificationModel(notification: 'Your agent have successfully done your listing', notificationimage: 'images/Ellipse 66.png'),
   NotificationModel(notification: 'Your agent have successfully done your listing', notificationimage: 'images/Ellipse 77.png'),

   


];
  }
}