import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hostel_hop_super_admin/src/features/home/view/home_page.dart';
import 'package:hostel_hop_super_admin/src/features/login/view/login_page.dart';
import 'package:hostel_hop_super_admin/src/features/property_owners/view/property_owners_page.dart';

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    ShellRoute(
        pageBuilder: (context, state, child) => NoTransitionPage(
              child: HomePage(
                child: child,
              ),
            ),
        routes: [
          GoRoute(
              name: 'owners',
              path: '/owners',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: PropertyOwnersPage(),
                );
              }),
        ]),
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
