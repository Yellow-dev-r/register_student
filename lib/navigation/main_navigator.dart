

import 'package:x_mansion/navigation/app_router.gr.dart';

abstract class CustomNavigator {
  CustomNavigator({required this.router});

  final AppRouter router;
}

class MainNavigator implements CustomNavigator {
  @override
  const MainNavigator({required this.router});

  @override
  final AppRouter router;
}

CustomNavigator mainNavigator =
    MainNavigator(router: AppRouter());
