import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tour_easy2/Module/Side%20menu-Settings/View/Components/bottom_options.dart';
import 'package:tour_easy2/Module/Side%20menu-Settings/View/menu_bottomsheet.dart';

Widget sidemenuicon  (BuildContext context){
  return IconButton(onPressed: (){
    sidemenubottomsheet(context);
  }, icon: SvgPicture.asset('icons/SIDE MENU.svg'));
}