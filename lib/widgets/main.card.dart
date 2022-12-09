import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/app/app_colors.dart';
import 'package:store/manager/theme_controller.dart';

class MainCard extends StatelessWidget {
  MainCard({Key? key, required this.title, required this.body})
      : super(key: key);

  final String title;
  final Widget body;

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // crossAxisAlignment 伸展开
        children: [
          Obx(() => Container(
                color: themeController.isDark.value
                    ? Colors.grey
                    : AppColors.babyPink,
                padding: const EdgeInsets.all(10),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: AppColors.burgundy),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: body,
          )
        ],
      ),
    );
  }
}
