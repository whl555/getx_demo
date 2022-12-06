import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/app/app_theme.dart';
import 'package:store/manager/theme_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("store"),
        actions: [
          Obx(() => IconButton(
              onPressed: () {
                if (themeController.isDark.value) {
                  themeController.saveTheme(false);
                  themeController.changeTheme(Themes.lightTheme);
                  themeController.changeThemeMode(ThemeMode.light);
                } else {
                  themeController.saveTheme(true);
                  themeController.changeTheme(Themes.darkTheme);
                  themeController.changeThemeMode(ThemeMode.dark);
                }
                print(Get.isDarkMode);
              },
              icon: themeController.isDark.value
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined)))
        ],
      ),
      body: Center(
        child: Text("store home page"),
      ),
    );
  }
}
