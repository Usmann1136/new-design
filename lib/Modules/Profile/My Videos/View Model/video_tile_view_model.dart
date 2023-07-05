import 'package:get/get.dart';

import '../../Model/video_tile_model.dart';

class VideoTileViewModel extends GetxController{
  final videotilecard = <VideoTileModel>[].obs;
   @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
  void loadmodeldata(){
    videotilecard.value =[
 VideoTileModel(tileimage: 'images/video1.png'),
 VideoTileModel(tileimage: 'images/video2.png'),
 VideoTileModel(tileimage: 'images/video3.png')
    ];
    
  }
}