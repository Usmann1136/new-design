import 'package:flutter/material.dart';

class ListJobCardModel {

  String? title1;
  String? subitle2;
  String? address;
  String? time;
  String? location;
  String? timer;
  String? dollarsign;
  String? pasttime;


String? price;
VoidCallback? onTap;
ListJobCardModel({this.title1 ,this.subitle2 ,this.address, this.time , this.price ,   this.location,
  this.timer, this.pasttime,
  this.dollarsign , this.onTap });
}