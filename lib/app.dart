import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/navigation/router_observer.dart';

class MyApp extends ConsumerStatefulWidget {
  @override
  ConsumerState<MyApp> createState() => _MyApp();
}

class _MyApp extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: mainNavigator.router.defaultRouteParser(),
      routerDelegate: mainNavigator.router.delegate(
        navigatorObservers: () => [AutouRoteObserver()],
      ),
    );
  }
}
