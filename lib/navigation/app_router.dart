import 'package:auto_route/auto_route.dart';
import 'package:x_mansion/ui/attendance/attendance.dart';
import 'package:x_mansion/ui/grades/grades.dart';
import 'package:x_mansion/ui/home/home.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'View,Route', routes: <AutoRoute>[
  AutoRoute(page: HomeScreenView, path: '/landing', initial: true),
  AutoRoute(page: GradesScreenView, path: '/grades', initial: false),
  AutoRoute(page: AttendanceScreenView, path: '/attendance', initial: false)
])
class $AppRouter {}
