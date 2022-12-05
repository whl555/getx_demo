import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store/manager/theme_controller.dart';
import 'package:store/pages/home_page.dart';

import 'app/app_theme.dart';
import 'manager/store_binding.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final themeController = Get.put(ThemeController());

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
      ],
    );
  }
}
