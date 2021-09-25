import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen 6'),
      ),
      body: Center(
          child: TextField(
        autofocus: true,
      )),
    );
  }
}
