import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store/manager/theme_controller.dart';
import 'package:store/pages/edit_follower_count/edit_follower_count.dart';
import 'package:store/pages/edit_name/update_store_name.dart';
import 'package:store/pages/home/home_page.dart';
import 'package:store/pages/toggle_status/store_status.dart';

import 'app/app_theme.dart';
import 'manager/store_binding.dart';
import 'manager/store_controller.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final themeController = Get.put(ThemeController());
  final storeController = Get.put(StoreController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "the store of whl",
      home: HomePage(),
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      initialRoute: "/",
      initialBinding: StoreBinding(),
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: '/edit_name', page: () => const UpdateStoreName()),
        // GetPage(name: '/add_followers', page: () => AddFollowers()),
        GetPage(name: '/toggle_status', page: () => const StoreStatus()),
        GetPage(name: '/edit_follower_count', page: () => const EditFollowerCount()),
        // GetPage(name: '/add_reviews', page: () => AddReviews()),
        // GetPage(name: '/update_menu', page: () => const UpdateMenu()),
      ],
    );
  }
}
