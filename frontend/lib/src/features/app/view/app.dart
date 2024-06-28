import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hostel_hop_super_admin/main.dart';
import 'package:hostel_hop_super_admin/src/features/login/view/login_page.dart';
import 'package:hostel_hop_super_admin/src/repository/wallet/wallet_repository.dart';

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                const Text('Home'),
                TextButton(
                    onPressed: () {
                      getIt.get<WalletRepository>().getWallet();
                    },
                    child: const Text('Get Wallets'))
              ],
            ),
          ),
        );
      },
    ),
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
