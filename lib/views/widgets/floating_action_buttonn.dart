import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:provider/provider.dart';

class FloatingActionButtonn extends StatelessWidget {
  FloatingActionButtonn({Key? key, required this.n}) : super(key: key);

  String n;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        switch (n) {
          case 'A':
            context.read<AppNavigationController>().gotoScreenA();
            break;
          case 'B':
            context.read<AppNavigationController>().gotoScreenB();
            break;
          case 'C':
            context.read<AppNavigationController>().gotoScreenC();
            break;
          case 'D':
            context.read<AppNavigationController>().gotoScreenD();
            break;
          case 'M':
            context.read<AppNavigationController>().gotoModalM();
            break;
          case 'N':
            context.read<AppNavigationController>().gotoScreenN();
            break;
        }
      },
      child: Text(n),
    );
  }
}
