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
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:x_mansion/ui/home/home.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.HomeScreenView(),
      );
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/landing',
          fullMatch: true,
        ),
        _i2.RouteConfig(
          HomeScreenRoute.name,
          path: '/landing',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreenView]
class HomeScreenRoute extends _i2.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/landing',
        );

  static const String name = 'HomeScreenRoute';
}
