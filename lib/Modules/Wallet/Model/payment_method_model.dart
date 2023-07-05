import 'package:flutter/material.dart';

class PaymentMethodModel {
  String? leading;
  String? title;
  VoidCallback? onTap;
  PaymentMethodModel({this.leading , this.title , this.onTap });

}