import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/manager/theme_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final themeController = ThemeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("store"),
        actions: [
          IconButton(
              onPressed: (){
                if(Get.isDarkMode){
                  themeController.saveTheme(false);
                } else {
                  themeController.saveTheme(true);
                }
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
