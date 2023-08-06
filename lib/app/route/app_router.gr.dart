// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:birthday_app/data/models/menu_item/menu_item_model.dart' as _i5;
import 'package:birthday_app/presentation/screens/guests/guests_screen.dart'
    as _i1;
import 'package:birthday_app/presentation/screens/main/main_screen.dart' as _i2;
import 'package:birthday_app/presentation/screens/menu_details/menu_details_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i6;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    GuestsRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.GuestsScreenWidget(),
      );
    },
    MainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreenWidget(),
      );
    },
    MenuDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MenuDetailsRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MenuDetailsScreenWidget(
          menuItem: args.menuItem,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.GuestsScreenWidget]
class GuestsRoute extends _i4.PageRouteInfo<void> {
  const GuestsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          GuestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainScreenWidget]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MenuDetailsScreenWidget]
class MenuDetailsRoute extends _i4.PageRouteInfo<MenuDetailsRouteArgs> {
  MenuDetailsRoute({
    required _i5.MenuItemModel menuItem,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          MenuDetailsRoute.name,
          args: MenuDetailsRouteArgs(
            menuItem: menuItem,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MenuDetailsRoute';

  static const _i4.PageInfo<MenuDetailsRouteArgs> page =
      _i4.PageInfo<MenuDetailsRouteArgs>(name);
}

class MenuDetailsRouteArgs {
  const MenuDetailsRouteArgs({
    required this.menuItem,
    this.key,
  });

  final _i5.MenuItemModel menuItem;

  final _i6.Key? key;

  @override
  String toString() {
    return 'MenuDetailsRouteArgs{menuItem: $menuItem, key: $key}';
  }
}
