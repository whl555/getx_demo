import 'package:get/get.dart';

class HomeController extends GetxController{
  void updateFollowerCount(){
    // 跳转页面
    Get.toNamed("/edit_follower_count");
  }

  void updateStoreName(){
    // 跳转页面
    Get.toNamed("/edit_name");
  }

  void updateStoreStatus(){
    // 跳转页面
    Get.toNamed('/toggle_status');
  }
}