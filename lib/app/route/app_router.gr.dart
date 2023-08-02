// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:birthday_app/presentation/screens/guests/guests_screen.dart'
    as _i1;
import 'package:birthday_app/presentation/screens/main/main_screen.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    GuestsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.GuestsScreenWidget(),
      );
    },
    MainRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreenWidget(),
      );
    },
  };
}

/// generated route for
/// [_i1.GuestsScreenWidget]
class GuestsRoute extends _i3.PageRouteInfo<void> {
  const GuestsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          GuestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainScreenWidget]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
