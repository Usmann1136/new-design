import 'package:get/get.dart';
import 'package:tour_easy2/Module/Wallet/Model/payment_method_model.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';



class PaymentMethodViewModel extends GetxController{
   final paymentmethodcard = <PaymentMethodModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
    void loadmodeldata(){
    paymentmethodcard.value =[
    PaymentMethodModel(leading: 'images/visa.png' , title: '4565*********' , onTap: (){
      Get.toNamed(RoutesName.addcardscreen);
    } ),
    
    ];
  }
}