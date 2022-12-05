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
          IconButton(
              onPressed: (){
                if(Get.isDarkMode){
                  themeController.saveTheme(false);
                  themeController.changeTheme(Themes.lightTheme);
                } else {
                  themeController.saveTheme(true);
                  themeController.changeTheme(Themes.darkTheme);
                }
                print(Get.isDarkMode.toString());
              },
              icon: Get.isDarkMode
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined)
          )
        ],
      ),
      body: Center(
        child: Text("store home page"),
      ),
    );
  }
}
