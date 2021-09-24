import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:provider/provider.dart';

class Usecase3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Use Case 3')),
        actions: [
          IconButton(
              icon: Icon(Icons.lock_open),
              onPressed: () {
                context.read<AppNavigationController>().lock();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(child: TextField()),
      ),
    );
  }
}
