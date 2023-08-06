import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'ScreenWidget,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: MainRoute.page),
        AutoRoute(path: '/menu_details', page: MenuDetailsRoute.page),
        AutoRoute(path: '/guests', page: GuestsRoute.page),
        AutoRoute(path: '/wishes', page: WishesRoute.page),
      ];
}
