import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController{
  // UI状态——主题
  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  final isDark = false.obs;

  ThemeController(){
    final result = _loadTheme();
    isDark(result);
  }

  // theme保存在GetStorage
  final _box = GetStorage();
  final _key = "isDarkMode";

  bool _loadTheme() => _box.read(_key) ?? false;

  void saveTheme(bool isDarkMode){
    _box.write(_key, isDarkMode);
    isDark(isDarkMode);
  }

  void changeTheme(ThemeData themeData) => Get.changeTheme(themeData);

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

}