import 'package:flutter/material.dart';
import 'package:fluttertestapp/model/app_state.dart';
import 'package:fluttertestapp/provider/provider_utils.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:provider/provider.dart';

class ScreenDA extends StatefulWidget {
  @override
  _ScreenDAState createState() => _ScreenDAState();
}

class _ScreenDAState extends State<ScreenDA> with AppProviderMixin {
  void _onPressed() {
    final state = appViewModel.state;
    appViewModel.setUseCase2Name(_nextScreen(state));
    context.read<AppNavigationController>().gotoScreenUsecase2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen D'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Text(_nextScreen(appState)),
      ),
    );
  }

  String _nextScreen(AppState state) => state.usecase2Index == 'A' ? 'B' : 'A';
}
