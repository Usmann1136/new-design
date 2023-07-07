import 'package:get/get.dart';
import 'package:tour_easy2/Module/Chat/Model/chat_model.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

class ChatViewModel extends GetxController{
final chatviewcard = <ChatModel>[].obs;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    chatviewcard.value =[
      ChatModel(message: 'I reached on visit point' ,messagecount: '3' ,
      
      messangerimage: 'images/Ellipse 10.png', messangername: 'Wade Warren' , messagecountcolor: AppColor.splashtitlecolor  ),
       ChatModel(message: 'I reached on visit point' , messangerimage: 'images/messanger1.png', messangername: 'Albert Flores' ,messagecountcolor: AppColor.scaffoldcolor ),
        ChatModel(message: 'I reached on visit point'  ,messangerimage: 'images/messanger2.png', messangername: 'Darlene Robertson' ,messagecountcolor: AppColor.scaffoldcolor ),
         ChatModel(message: 'I reached on visit point'  ,messangerimage: 'images/messanger3.png', messangername: 'Savannah Nguyen' ,messagecountcolor: AppColor.scaffoldcolor ),
          ChatModel(message: 'I reached on visit point'  ,messagecount: '4',messangerimage: 'images/messanger4.png', messangername: 'Annette Black' , messagecountcolor: AppColor.splashtitlecolor ),
           ChatModel(message: 'I reached on visit point' ,messangerimage: 'images/Ellipse 22.png', messangername: 'Jenny Wilson' , ),
            ChatModel(message: 'I reached on visit point' ,messagecount: '1' ,messangerimage: 'images/messanger5.png', messangername: 'Ralph Edwards' , messagecountcolor: AppColor.splashtitlecolor ),
             ChatModel(message: 'I reached on visit point'  ,messangerimage: 'images/messanger6.png', messangername: 'Theresa Webb' ,messagecountcolor: AppColor.scaffoldcolor )
    ];
  }
}