import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/widgets/floating_action_buttonn.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen C'),
      ),
      body: Center(child: Text('Screen C')),
      floatingActionButton: FloatingActionButtonn(n: 'M'),
    );
  }
}
