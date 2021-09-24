import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:provider/provider.dart';

class Lock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 25,
          child: IconButton(
            onPressed: () {
              context.read<AppNavigationController>().gotoScreenUsecase3();
            },
            icon: Icon(Icons.lock),
          ),
        ),
      ),
    );
  }
}
