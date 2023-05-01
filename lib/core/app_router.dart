import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/login/presentation/screen/login_screen.dart';
import 'screens/page_screen.dart';
import 'screens/scaffold_with_navigation_rail_destination.dart';
import 'screens/loading_screen.dart';

class AppRouter {
  static const String HOME_PAGE_NAME = "home";
  static const String HOME_PAGE_ROUTE = "/";
  static const String LOADING_PAGE_NAME = "loading";
  static const String LOADING_PAGE_ROUTE = "/loading";
  static const String LOGIN_PAGE_NAME = "login";
  static const String LOGIN_PAGE_ROUTE = "/login";
  static const String PAGE1_NAME = "page1";
  static const String PAGE1_ROUTE = "/page1";
  static const String PAGE2_NAME = "page2";
  static const String PAGE2_ROUTE = "/page2";

  static GoRouter createRouter() {
    final GlobalKey<NavigatorState> rootNavigatorKey =
        GlobalKey<NavigatorState>(debugLabel: 'root');
    final GlobalKey<NavigatorState> _shellNavigatorKey =
        GlobalKey<NavigatorState>(debugLabel: 'shell');

    // Create routes for each scenarios
    List<RouteBase> routes = [];
    // Home
    routes.add(ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => ScaffoldWithNavigationRailDestination(
        child: child,
        onDestinationSelectedCallback: (index) {
          switch (index) {
            case 0:
              context.go(AppRouter.HOME_PAGE_ROUTE);
              break;
            case 1:
              context.go(AppRouter.PAGE1_ROUTE);
              break;
            case 2:
              context.go(AppRouter.PAGE2_ROUTE);
              break;
            default:
          }
        },
      ),
      routes: [
        GoRoute(
            name: HOME_PAGE_NAME,
            path: HOME_PAGE_ROUTE,
            builder: ((context, state) => PageScreen(text: 'Home'))),
        GoRoute(
            name: PAGE1_NAME,
            path: PAGE1_ROUTE,
            builder: ((context, state) => PageScreen(text: "1"))),
        GoRoute(
            name: PAGE2_NAME,
            path: PAGE2_ROUTE,
            builder: ((context, state) => PageScreen(text: "2")))
      ],
    ));
    // Login
    routes.add(GoRoute(
        name: LOGIN_PAGE_NAME,
        path: LOGIN_PAGE_ROUTE,
        builder: (context, state) => LoginScreen()));
    // Loading
    routes.add(GoRoute(
        name: LOADING_PAGE_NAME,
        path: LOADING_PAGE_ROUTE,
        builder: (context, state) => LoadingScreen()));

    return GoRouter(
        debugLogDiagnostics: true,
        navigatorKey: rootNavigatorKey,
        initialLocation: LOADING_PAGE_ROUTE,
        routes: routes);
  }
}
