import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/app/app_colors.dart';
import 'package:store/app/app_theme.dart';
import 'package:store/manager/store_controller.dart';
import 'package:store/manager/theme_controller.dart';
import 'package:store/widgets/main.card.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();
  final storeController = Get.find<StoreController>();
  final homeController = Get.put(HomeController());

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
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("商店名字: ", style: TextStyle(fontSize: 18)),
                        Obx(() => Flexible(
                              fit: FlexFit.tight,
                              child: GestureDetector(
                                onTap: homeController.updateStoreName,
                                child: Text(storeController.storeName.value,
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("关注商店的人数字: ",
                            style: TextStyle(fontSize: 18)),
                        Obx(() => Flexible(
                              fit: FlexFit.tight,
                              child: GestureDetector(
                                onTap: homeController.updateFollowerCount,
                                child: Text(
                                  storeController.followerCount.value.toString(),
                                  style: const TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("商店状态: ", style: TextStyle(fontSize: 18)),
                        Obx(() => Flexible(
                              fit: FlexFit.tight,
                              child: InkWell(
                                onTap: homeController.updateStoreStatus,
                                child: Text(
                                    storeController.isStoreOpen.value
                                        ? "Open"
                                        : "Close",
                                    style: TextStyle(
                                        color: storeController.isStoreOpen.value
                                            ? Colors.green.shade700
                                            : Colors.red,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MainCard(title: "关注商店的人", body: Container()),
              const SizedBox(height: 20),
              MainCard(title: "反馈", body: Container())
            ],
          ),
        ));
  }
}
