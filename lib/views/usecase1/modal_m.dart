import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:fluttertestapp/views/widgets/floating_action_buttonn.dart';
import 'package:provider/provider.dart';

class ModalM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Modal M')),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            context.read<AppNavigationController>().gotoScreenC();
          },
        ),
      ),
      body: Center(child: Text('Modal M')),
      floatingActionButton: FloatingActionButtonn(n: 'N'),
    );
  }
}
