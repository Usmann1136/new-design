import 'package:get/get.dart';


import '../../Model/payment_method_model.dart';

class AddMethodViewModel extends GetxController{
   final addpaymentmethodcard = <PaymentMethodModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
    void loadmodeldata(){
    addpaymentmethodcard.value =[

     PaymentMethodModel(leading: 'images/emojione_credit-card.png' , title: 'Debit/Credit Card' ,), 
      PaymentMethodModel(leading: 'images/logos_paypal.png' , title: 'Paypal' , ),
    ];
  }
}