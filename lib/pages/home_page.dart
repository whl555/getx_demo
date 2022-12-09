import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/app/app_colors.dart';
import 'package:store/app/app_theme.dart';
import 'package:store/manager/theme_controller.dart';
import 'package:store/widgets/main.card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.spaceCadet,
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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            MainCard(
              title: '商店信息',
              body: Container(),
            ),
            const SizedBox(height: 20),
            MainCard(
                title: "关注商店的人",
                body: Container()
            ),
            const SizedBox(height: 20),
            MainCard(
                title: "反馈",
                body: Container()
            )
          ],
        ),
      )
    );
  }
}
