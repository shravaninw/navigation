import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/widgets/floating_action_buttonn.dart';

class ScreenN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Screen N'),
        ),
        body: Center(child: Text('Screen N')),
        floatingActionButton: FloatingActionButtonn(n: 'D'));
  }
}
