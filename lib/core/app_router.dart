import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentworks/core/screens/home_screen.dart';
import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/presentation/screen/realty_screen.dart';
import 'package:rentworks/features/tenant/presentation/screen/tenants_screen.dart';

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
  static const String TENANTS_NAME = "tenants";
  static const String TENANTS_ROUTE = "/tenants";
  static const String REALTY_NAME = "realty";
  static const String REALTY_ROUTE = "/realty";
  static const String REALTY_DETAILS_NAME = "realty_details";
  static const String REALTY_DETAILS_ROUTE = "/realty_details";
  static const String TENANT_DETAILS_NAME = "tenants_details";
  static const String TENANT_DETAILS_ROUTE = "/tenants_details";

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
              context.go(AppRouter.REALTY_ROUTE);
              break;
            case 2:
              context.go(AppRouter.TENANTS_ROUTE);
              break;
            default:
          }
        },
      ),
      routes: [
        GoRoute(
          name: HOME_PAGE_NAME,
          path: HOME_PAGE_ROUTE,
          pageBuilder: (context, state) => createFadeTrasition(HomeScreen()),
        ),
        GoRoute(
          name: TENANTS_NAME,
          path: TENANTS_ROUTE,
          pageBuilder: (context, state) => createFadeTrasition(TenantsScreen()),
        ),
        GoRoute(
          name: REALTY_NAME,
          path: REALTY_ROUTE,
          pageBuilder: (context, state) => createFadeTrasition(RealtyScreen()),
        ),
        // GoRoute(
        //   name: REALTY_DETAILS_NAME,
        //   path: REALTY_DETAILS_ROUTE,
        //   pageBuilder: (context, state) {
        //     Realty realty = (state.extra as Realty);
        //     return createFadeTrasition(RealtyDetails(realty: realty));
        //   },
        // ),
        // GoRoute(
        //   name: TENANT_DETAILS_NAME,
        //   path: TENANT_DETAILS_ROUTE,
        //   pageBuilder: (context, state) {
        //     Realty realty = (state.extra as Realty);
        //     return createFadeTrasition(RealtyDetails(realty: realty));
        //   },
        // )
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

  static CustomTransitionPage<dynamic> createFadeTrasition(Widget child) {
    return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
              opacity: CurveTween(curve: Curves.easeOutQuad).animate(animation),
              child: child),
    );
  }
}
