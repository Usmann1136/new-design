import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Model/payment_method_model.dart';

class AddNewBankViewModel extends GetxController{
   final addnewbankcard = <PaymentMethodModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
    void loadmodeldata(){
    addnewbankcard.value =[
    PaymentMethodModel(leading: 'images/emojione_bank.png' , title: 'Add Bank Account' , onTap: (){
    
    } ),
    
    ];
  }
}