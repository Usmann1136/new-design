import 'package:get/get.dart';

import '../../Model/privacy_policy_model.dart';

class PrivacyPolicyViewModel extends GetxController{
  final privacypolicycard =<PrivacyPolicyModel> [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadmodeldata();
  }
    void loadmodeldata(){
    privacypolicycard.value =[
    PrivacyPolicyModel(dummytext: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium fermentum nibh facilisi nisi eget nibh. Mauris volutpat arcu et venenatis ut mi netus mauris sed. Et, eget pharetra pharetra lacus. Justo, risus augue nibh tempor eu, lorem viverra. Fermentum malesuada interdum a egestas sollicitudin vulputate. Congue quisque dui ultrices dictum a sed lectus faucibus. Dignissim nisl, sit nec fermentum et eu, commodo. Vel netus cras ac non mi pellentesque vel, feugiat. Amet diam, enim interdum a sit. Id morbi massa eu luctus. Sed pharetra varius at in.Integer adipiscing id sed nisl adipiscing enim maecenas dignissim. Ut nulla suspendisse pharetra scelerisque enim dui libero. Lectus lacus, fringilla molestie habitant molestie mus aliquam. Maecenas consequat placerat lorem sem turpis ut tempus volutpat purus. Pretium, quam dictumst turpis sit massa augue fringilla arcu. Id egestas sapien facilisis in pharetra. Tincidunt fusce sodales duis lorem interdum. Bibendum nisl quis commodo pharetra, tincidunt nisl odio egestas ut. Integer elit facilisis vitae, aenean massa nec. Ut sit orci luctus adipiscing aliquet eu vel. Gravida facilisi tellus nunc aliquet orci, turpis id nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium fermentum nibh facilisi nisi eget nibh. Mauris volutpat arcu et venenatis ut mi netus mauris sed. Et, eget pharetra pharetra lacus. Justo, risus augue nibh tempor eu, lorem viverra. Fermentum malesuada interdum a egestas sollicitudin vulputate. Congue quisque dui ultrices dictum a sed lectus faucibus. Dignissim nisl, sit nec fermentum et eu, commodo. Vel netus cras ac non mi pellentesque vel, feugiat. Amet diam, enim interdum a sit. Id morbi massa eu luctus. Sed pharetra varius at in.'),
    PrivacyPolicyModel(dummytext: 'Integer adipiscing id sed nisl adipiscing enim maecenas dignissim. Ut nulla suspendisse pharetra scelerisque enim dui libero. Lectus lacus, fringilla molestie habitant molestie mus aliquam. Maecenas consequat placerat lorem sem turpis ut tempus volutpat purus. Pretium, quam dictumst turpis sit massa augue fringilla arcu. Id egestas sapien facilisis in pharetra. Tincidunt fusce sodales duis lorem interdum. Bibendum nisl quis commodo pharetra, tincidunt nisl odio egestas ut. Integer elit facilisis vitae, aenean massa nec. Ut sit orci luctus adipiscing aliquet eu vel. Gravida facilisi tellus nunc aliquet orci, turpis id nisl.'),
   
    ];
  }
}