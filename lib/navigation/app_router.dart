import 'package:auto_route/auto_route.dart';
import 'package:x_mansion/ui/home/home.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/landing',
      initial: true
    )
  ])
  class $AppRouter {}
