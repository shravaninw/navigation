import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:provider/provider.dart';

class Usecase6Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Use Case 6')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<AppNavigationController>().gotoScreen6();
        },
        child: Text('B'),
      ),
    );
  }
}
