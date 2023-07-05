import 'package:get/get.dart';

import '../../../Utils/routes/routes_name.dart';
import '../../Home/Model/list_job_model.dart';

class CompletedJobViewModel extends GetxController{
  final completedjobcards = <ListJobCardModel>[].obs;


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    completedjobcards.value =[
       ListJobCardModel(title1: 'Show them a house , its a short visit', subitle2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui id iaculis blandit quis vitae pellentesque felis, neque. Accumsan ullamcorper tempus suspendisse id duis. Sit maecenas eu duis tincidunt a.' , 
  timer: 'icons/clock-10.svg', location: 'icons/map-pin.svg', dollarsign: 'images/dollar-sign.png',

  address: 'Address here,8798' , time: 'Done on Time' , price: '180'  ,
  onTap: (){
    Get.toNamed(RoutesName.completejobdetailscreen);
  }
    ),
 ListJobCardModel(title1: 'Show them a house , its a short visit', subitle2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui id iaculis blandit quis vitae pellentesque felis, neque. Accumsan ullamcorper tempus suspendisse id duis. Sit maecenas eu duis tincidunt a.' , 
  timer: 'icons/clock-10.svg', location: 'icons/map-pin.svg', dollarsign: 'images/dollar-sign.png',
  address: 'Address here,8798' , time: '10 min Late' , price: '180' , onTap: (){
    
  } ),
 ListJobCardModel(title1: 'Show them a house , its a short visit', subitle2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui id iaculis blandit quis vitae pellentesque felis, neque. Accumsan ullamcorper tempus suspendisse id duis. Sit maecenas eu duis tincidunt a.' , 
  timer: 'icons/clock-10.svg', location: 'icons/map-pin.svg', dollarsign: 'images/dollar-sign.png',
  address: 'Address here,8798' , time: 'Done on Time' , price: '180' , onTap: (){
    
  } ),
    ];
  }
}