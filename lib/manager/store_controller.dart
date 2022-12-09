import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StoreController extends GetxController{
  final storeName = 'Thick Shake'.obs;
  final followerCount = 0.obs;
  final isStoreOpen = true.obs;

  final storeNameEditingController = TextEditingController();

  updateStoreName(String name) {
    storeName(name);
  }

  updateFollowerCount() {
    followerCount(followerCount.value + 1);
  }

  void storeStatusOpen(bool isOpen) {
    isStoreOpen(isOpen);
  }

}