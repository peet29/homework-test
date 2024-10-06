import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework_test/src/core/route/route_name.dart';
import 'package:homework_test/src/features/shopping/presentation/dashboard.dart';
import 'package:homework_test/src/features/shopping/presentation/shopping_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route_provider.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return DashboardScreen(
              navigationShell: navigationShell,
              key: state.pageKey,
            );
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(routes: [
              GoRoute(
                name: shopping,
                path: '/',
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return NoTransitionPage(
                    child: ShoppingScreen(
                      key: state.pageKey,
                    ),
                  );
                },
              ),
            ])
          ]),
      GoRoute(
        name: cart,
        path: '/$cart',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return const MaterialPage(child: Text("Cart"));
        },
      ),
    ],
  );
}
