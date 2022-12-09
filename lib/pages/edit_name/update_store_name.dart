import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/manager/store_controller.dart';

class UpdateStoreName extends StatelessWidget {
  UpdateStoreName({Key? key}) : super(key: key);

  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("更新名称")),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Enter Store Name",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: storeController.storeNameEditingController,
            ),
            const SizedBox(height: 36),
            ElevatedButton(
                onPressed: (){
                  storeController.storeName(storeController.storeNameEditingController.text.toString());
                  Get.back();
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Update',
                    style: TextStyle(fontSize: 20.0),
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}
