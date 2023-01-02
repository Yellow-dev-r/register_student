import 'package:auto_route/auto_route.dart';
import 'package:x_mansion/ui/attendance/attendance.dart';
import 'package:x_mansion/ui/attendance/helper/attendance_view.dart';
import 'package:x_mansion/ui/grades/grades.dart';
import 'package:x_mansion/ui/home/home.dart';

@CustomAutoRouter(
    transitionsBuilder: TransitionsBuilders.slideRight,
    replaceInRouteName: 'View,Route',
    routes: <AutoRoute>[
      AutoRoute(page: HomeScreenView, path: '/landing', initial: true),
      AutoRoute(page: GradesScreenView, path: '/grades'),
      AutoRoute(page: AttendanceScreenView, path: '/attendance'),
      AutoRoute(page: AttendanceView, path: '/attendance/:id')
    ])
class $AppRouter {}
