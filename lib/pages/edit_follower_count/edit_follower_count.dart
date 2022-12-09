import 'package:flutter/material.dart';

class EditFollowerCount extends StatelessWidget {
  const EditFollowerCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("更新数量")),
      body: Center(
          child: Text("Update")
      ),
    );
  }
}
