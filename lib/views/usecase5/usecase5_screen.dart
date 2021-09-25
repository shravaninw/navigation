import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertestapp/provider/provider_utils.dart';

class Usecase5Screen extends StatefulWidget {
  @override
  _Usecase5ScreenState createState() => _Usecase5ScreenState();
}

class _Usecase5ScreenState extends State<Usecase5Screen> with AppProviderMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      appViewModel.setDelay(true);
      context.navigation.delayScreen2();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Use Case 5')),
        body: appState.loading == true
            ? Center(child: Text('Loading Done.'))
            : Center(child: CircularProgressIndicator()));
  }
}
