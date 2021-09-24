import 'package:flutter/material.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';
import 'package:provider/provider.dart';

class Button extends StatelessWidget {
  Button({Key? key, required this.name, required this.n}) : super(key: key);
  String name;
  int n;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            switch (n) {
              case 1:
                context.read<AppNavigationController>().gotoScreenA();
                break;
              case 2:
                context.read<AppNavigationController>().gotoScreenUsecase2();
                break;
              case 3:
                context.read<AppNavigationController>().gotoScreenUsecase3();
                break;
              case 4:
                context.read<AppNavigationController>().gotoScreenUsecase4();
                break;
              case 5:
                context.read<AppNavigationController>().gotoScreenUsecase5();
                break;
              case 6:
                context.read<AppNavigationController>().gotoScreenUsecase6();
                break;
            }
          },
          child: Text(name),
          style: ElevatedButton.styleFrom(
              primary: Colors.grey[200], onPrimary: Colors.black)),
    );
  }
}
