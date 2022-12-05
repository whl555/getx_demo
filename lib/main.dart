import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/manager/theme_controller.dart';
import 'package:store/pages/home_page.dart';

import 'app/app_theme.dart';
import 'manager/store_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final themeController = ThemeController();

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
