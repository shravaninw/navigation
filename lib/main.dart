import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fluttertestapp/core/navigation/navigation.dart';
import 'package:fluttertestapp/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

import 'views/navigation/app_navigation_controller.dart';
import 'views/navigation/app_navigation_state.dart';

void main() {
  runApp(AppProvider(
      child: StateNotifierProvider<AppNavigationController, AppNavigationState>(
    create: (_) => AppNavigationController(),
    child: MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigation',
      routeInformationParser: AppRouteParser(),
      routerDelegate: AppRouteDelegate<AppNavigationController>(
          context.read<AppNavigationController>()),
    );
  }
}
