import 'package:flutter/material.dart';

class StoreStatus extends StatelessWidget {
  const StoreStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("更新状态")),
      body: Center(
          child: Text("Update")
      ),
    );
  }
}
