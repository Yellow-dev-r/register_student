// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../ui/attendance/attendance.dart' as _i3;
import '../ui/attendance/helper/attendance_view.dart' as _i4;
import '../ui/grades/grades.dart' as _i2;
import '../ui/home/home.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.HomeScreenView(),
        transitionsBuilder: _i5.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GradesScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.GradesScreenView(),
        transitionsBuilder: _i5.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AttendanceScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i3.AttendanceScreenView(),
        transitionsBuilder: _i5.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AttendanceRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AttendanceRouteArgs>(
          orElse: () =>
              AttendanceRouteArgs(asignatureId: pathParams.getString('id')));
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.AttendanceView(asignatureId: args.asignatureId),
        transitionsBuilder: _i5.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/landing',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          HomeScreenRoute.name,
          path: '/landing',
        ),
        _i5.RouteConfig(
          GradesScreenRoute.name,
          path: '/grades',
        ),
        _i5.RouteConfig(
          AttendanceScreenRoute.name,
          path: '/attendance',
        ),
        _i5.RouteConfig(
          AttendanceRoute.name,
          path: '/attendance/:id',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreenView]
class HomeScreenRoute extends _i5.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/landing',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.GradesScreenView]
class GradesScreenRoute extends _i5.PageRouteInfo<void> {
  const GradesScreenRoute()
      : super(
          GradesScreenRoute.name,
          path: '/grades',
        );

  static const String name = 'GradesScreenRoute';
}

/// generated route for
/// [_i3.AttendanceScreenView]
class AttendanceScreenRoute extends _i5.PageRouteInfo<void> {
  const AttendanceScreenRoute()
      : super(
          AttendanceScreenRoute.name,
          path: '/attendance',
        );

  static const String name = 'AttendanceScreenRoute';
}

/// generated route for
/// [_i4.AttendanceView]
class AttendanceRoute extends _i5.PageRouteInfo<AttendanceRouteArgs> {
  AttendanceRoute({required String asignatureId})
      : super(
          AttendanceRoute.name,
          path: '/attendance/:id',
          args: AttendanceRouteArgs(asignatureId: asignatureId),
          rawPathParams: {'id': asignatureId},
        );

  static const String name = 'AttendanceRoute';
}

class AttendanceRouteArgs {
  const AttendanceRouteArgs({required this.asignatureId});

  final String asignatureId;

  @override
  String toString() {
    return 'AttendanceRouteArgs{asignatureId: $asignatureId}';
  }
}
