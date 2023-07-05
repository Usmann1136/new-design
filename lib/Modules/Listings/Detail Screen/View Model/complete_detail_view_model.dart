import 'package:get/get.dart';

import '../../../Home/Model/detail_job_model.dart';

class ComplateDetailViewModel extends GetxController{
   final complateddetailcards = <DetailJobCardModel>[].obs;


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    complateddetailcards.value =[
       DetailJobCardModel(title: 'Show them a house , its a short visit',
       
      paragraph1: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, a purus egestas amet urna, habitasse lobortis enim. Varius in in aliquet sed turpis imperdiet ullamcorper. Sit amet tellus adipiscing pretium netus. Nibh adipiscing mus tincidunt non, vel.',
      paragraph2:'Cursus eros, duis ultricies convallis. Cursus nunc euismod et viverra id congue. Consectetur nulla tincidunt semper orci consequat blandit. Vitae est odio magna at.In euismod mauris mattis fermentum nisi vitae tincidunt. Dictum egestas ultrices dolor lacus augue lectus elit viverra. Mauris ridiculus sociis amet quis sem non. Pulvinar diam sit hendrerit consectetur. Ultrices vitae nibh in fringilla at aliquam sagittis, a, imperdiet.'
      ,paragraph3: 'Amet mi lorem convallis vulputate velit ut. Ut a donec et at at eu arcu.A feugiat est tortor id malesuada mauris montes. Vitae quisque at fames amet lectus. Dignissim pulvinar hac tortor sollicitudin. Est et porttitor porttitor vel eros facilisi pharetra diam. Feugiat ut luctus feugiat posuere. Mauris, eget massa pulvinar tellus. Mi, ullamcorper nulla duis dignissim arcu, felis tristique phasellus. Sed pellentesque id vulputate pharetra leo in adipiscing ullamcorper pretium. Suscipit urna consectetur tempus dui nunc, tellus gravida fringilla eros. Viverra non enim mi sit adipiscing at tincidun at dolor',
    
     clientname: 'Thomas Groge',
     clienttitle: 'Client Name',
    
     
       timer: 'icons/clock-10.svg', location: 'icons/map-pin.svg', dollarsign: 'images/dollar-sign.png',
  address: 'Address here,8798' , time: 'Done on Time' , price: '180' , 
       )
    ];
  }
}