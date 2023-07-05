
import 'package:get/get.dart';

import '../../../Home/Model/list_job_model.dart';

class AgentJobViewModel extends GetxController{
   final agentjobcards = <ListJobCardModel>[].obs;


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    agentjobcards.value =[
       ListJobCardModel(title1: 'Show them a house , its a short visit', subitle2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui id iaculis blandit quis vitae pellentesque felis, neque. Accumsan ullamcorper tempus suspendisse id duis. Sit maecenas eu duis tincidunt a.' , 
  timer: 'icons/clock-10.svg', location: 'icons/map-pin.svg', dollarsign: 'images/dollar-sign.png',

  address: 'Address here,8798' , time: 'Done on Time' , price: '180'  ,
  pasttime: '5m ago',
  onTap: (){
    
  }
    ),
 
 ListJobCardModel(title1: 'Show them a house , its a short visit', subitle2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui id iaculis blandit quis vitae pellentesque felis, neque. Accumsan ullamcorper tempus suspendisse id duis. Sit maecenas eu duis tincidunt a.' , 
  timer: 'icons/clock-10.svg', location: 'icons/map-pin.svg', dollarsign: 'images/dollar-sign.png',
  address: 'Address here,8798' , time: 'Done on Time' , price: '180' , 
  pasttime: '5m ago',
  onTap: (){
    
  } ),
    ];
  }
}