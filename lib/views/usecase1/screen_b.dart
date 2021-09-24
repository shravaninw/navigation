import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/widgets/floating_action_buttonn.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Screen B')),
      ),
      body: Center(child: Text('Screen B')),
      floatingActionButton: FloatingActionButtonn(n: 'C'),
    );
  }
}
