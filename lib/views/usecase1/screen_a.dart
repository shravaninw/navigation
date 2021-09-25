import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/widgets/floating_action_buttonn.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen A'),
      ),
      floatingActionButton: FloatingActionButtonn(
        n: 'B',
      ),
      body: Center(child: Text('Screen A')),
    );
  }
}
