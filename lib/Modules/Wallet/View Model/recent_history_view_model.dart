import 'package:get/get.dart';
import 'package:tour_easy2/Module/Wallet/Model/recent_history_model.dart';

class RecentHistoryViewModel extends GetxController{
  final recenthistorycard = <RecentHistoryModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    recenthistorycard.value =[
     RecentHistoryModel(withdrawortopup: 'Withdraw', 
     budget: 'Budget',
     amount: '5700 USD',
     dateandtime: '9:55 am - 11-09-2022'),
      RecentHistoryModel(withdrawortopup: 'Top Up', 
     budget: 'Budget',
     amount: '5700 USD',
     dateandtime: '9:55 am - 11-09-2022'),
      RecentHistoryModel(withdrawortopup: 'Top Up', 
     budget: 'Budget',
     amount: '5700 USD',
     dateandtime: '9:55 am - 11-09-2022'),
      RecentHistoryModel(withdrawortopup: 'Withdraw', 
     budget: 'Budget',
     amount: '5700 USD',
     dateandtime: '9:55 am - 11-09-2022')
    ];
  }
}