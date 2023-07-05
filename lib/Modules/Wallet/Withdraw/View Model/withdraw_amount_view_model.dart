import 'package:get/get.dart';

import '../../../../Utils/routes/routes_name.dart';
import '../../Model/payment_method_model.dart';

class WithdrawAmountViewModel extends GetxController{
     final withdrawpaymentcard = <PaymentMethodModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
    void loadmodeldata(){
    withdrawpaymentcard.value =[
    PaymentMethodModel(leading: 'images/bankofamerica.png' , title: 'Bank of America' , onTap: (){
    Get.toNamed(RoutesName.addbankscreen);
    } ),
    
    ];
  }
}