import 'package:flutter/material.dart';

class UpdateStoreName extends StatelessWidget {
  const UpdateStoreName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("更新名称")),
      body: Center(
        child: Text("Update")
      ),
    );
  }
}
