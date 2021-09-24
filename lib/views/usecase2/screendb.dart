import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:provider/provider.dart';

class ScreenDB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen D'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<AppNavigationController>().gotoScreenUsecase2();
        },
        child: Text('A'),
      ),
    );
  }
}
