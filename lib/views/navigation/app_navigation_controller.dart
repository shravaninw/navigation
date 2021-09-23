import 'package:flutter/material.dart';
import 'package:fluttertestapp/core/navigation/navigation.dart';
import 'package:fluttertestapp/ui.dart';
import 'package:fluttertestapp/views/home_page.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_state.dart';

class AppNavigationController extends AppFlowController<AppNavigationState> {
  AppNavigationController() : super(AppNavigationState());

  // ignore: unused_element
  void _setState(AppNavigationState state) => this.state = state;

  void updateUserName() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.value = null);
  }

  void submit() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.value = 'Updated');
  }

  @override
  List<Page<Object>> onGeneratePages(
    AppNavigationState state,
    List<Page<Object>> currentPages,
  ) {
    return <Page<Object>>[
      const MaterialPage<Object>(child: HomePage()),
      if (state.value == null)
        const MaterialPage<Object>(
          child: _NextPage(),
        ),
    ];
  }
}

class _NextPage extends StatelessWidget {
  const _NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(),
      body: TextButton(
        child: const Text('Reset'),
        onPressed: () => context.navigation.submit(),
      ),
    );
  }
}
