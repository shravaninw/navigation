import 'package:flutter/material.dart';
import 'package:fluttertestapp/provider/provider_utils.dart';

class Usecase2Screen extends StatefulWidget {
  @override
  _Usecase2ScreenState createState() => _Usecase2ScreenState();
}

class _Usecase2ScreenState extends State<Usecase2Screen> with AppProviderMixin {
  late Widget wig;

  @override
  Widget build(BuildContext context) {
    int index = appState.usecase2Index == 'A'
        ? 0
        : appState.usecase2Index == 'B'
            ? 1
            : 2;
    print(appState);
    switch (index) {
      case 0:
        wig = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.navigation.gotoScreenDA();
                  },
                  child: Text('Screen D')),
              Text(
                'ScreenA',
              ),
            ],
          ),
        );
        break;
      case 1:
        wig = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.navigation.gotoScreenDA();
                    // context.read<AppNavigationController>().gotoScreenDA();
                  },
                  child: Text('Screen D')),
              Text(
                'ScreenB',
              ),
            ],
          ),
        );
        break;
      case 2:
        wig = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.play_arrow),
              Text(
                'Screen C ',
              ),
            ],
          ),
        );
        break;
    }
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Use Case 2')),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen A'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Screen B'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow), label: 'Screen C'),
          ],
          currentIndex: index,
          onTap: _onTapped,
        ),
        body: wig);
  }

  void _onTapped(int index) {
    appViewModel.setUseCase2Name(
      index == 0
          ? 'A'
          : index == 1
              ? 'B'
              : 'C',
    );
  }
}
