import 'package:auto_route/auto_route.dart';
import 'package:x_mansion/ui/home/home.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'View,Route', routes: <AutoRoute>[
  AutoRoute(page: HomeScreenView, path: '/landing', initial: true)
])
class $AppRouter {}
