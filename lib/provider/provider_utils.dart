import 'package:fluttertestapp/model/app_state.dart';
import 'package:fluttertestapp/ui.dart';
import 'package:fluttertestapp/view_model/app_view_model.dart';
import 'package:fluttertestapp/views/navigation/app_navigation_controller.dart';

extension ProviderUtils on BuildContext {
  AppViewModel get appViewModel => read<AppViewModel>();

  AppNavigationController get navigation => read<AppNavigationController>();
}

mixin AppProviderMixin<S extends StatefulWidget> on State<S> {
  AppViewModel get appViewModel => context.appViewModel;

  AppState get appState => context.watch<AppState>();
}
