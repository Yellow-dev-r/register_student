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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../ui/attendance/attendance.dart' as _i3;
import '../ui/grades/grades.dart' as _i2;
import '../ui/home/home.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomeScreenView(),
      );
    },
    GradesScreenRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.GradesScreenView(),
      );
    },
    AttendanceScreenRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.AttendanceScreenView(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/landing',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          HomeScreenRoute.name,
          path: '/landing',
        ),
        _i4.RouteConfig(
          GradesScreenRoute.name,
          path: '/grades',
        ),
        _i4.RouteConfig(
          AttendanceScreenRoute.name,
          path: '/attendance',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreenView]
class HomeScreenRoute extends _i4.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/landing',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.GradesScreenView]
class GradesScreenRoute extends _i4.PageRouteInfo<void> {
  const GradesScreenRoute()
      : super(
          GradesScreenRoute.name,
          path: '/grades',
        );

  static const String name = 'GradesScreenRoute';
}

/// generated route for
/// [_i3.AttendanceScreenView]
class AttendanceScreenRoute extends _i4.PageRouteInfo<void> {
  const AttendanceScreenRoute()
      : super(
          AttendanceScreenRoute.name,
          path: '/attendance',
        );

  static const String name = 'AttendanceScreenRoute';
}
