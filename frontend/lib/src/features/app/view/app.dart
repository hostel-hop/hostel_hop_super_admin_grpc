import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hostel_hop_super_admin/src/features/login/view/login_page.dart';

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
                return NoTransitionPage(
                  child: Container(),
                );
              }),
        ]),
  ],
);

enum HomeTab {
  owners,
}

extension HomeTabExtension on HomeTab {
  static String getHomeTabName(HomeTab homeTab, BuildContext context) {
    switch (homeTab) {
      case HomeTab.owners:
        return 'Owners';
    }
  }

  static HomeTab fromPath(String path) {
    if (path.contains('/owners')) {
      return HomeTab.owners;
    }

    return HomeTab.owners;
  }

  String get path {
    switch (this) {
      case HomeTab.owners:
        return '/owners';
    }
  }

  Widget get icon {
    switch (this) {
      case HomeTab.owners:
        return const Icon(Icons.person);
    }
  }

  static HomeTab fromValue(int value) {
    switch (value) {
      case 0:
        return HomeTab.owners;
    }
    return HomeTab.owners;
  }
}

class HomePage extends HookWidget {
  const HomePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 5);

    final location = GoRouterState.of(context).matchedLocation;

    final selectedIndex = useState(HomeTabExtension.fromPath(location).index);

    return Scaffold(
      body: Center(
        child: Column(children: [
          TabBar(
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              indicatorColor: Colors.transparent,
              controller: tabController,
              indicator: null,
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.zero,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: selectedIndex.value == 0
                          ? Colors.transparent
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: selectedIndex.value == 1
                            ? const Radius.circular(10)
                            : Radius.zero,
                      ),
                    ),
                    child: Row(children: [
                      const SizedBox(width: 20),
                      HomeTab.owners.icon,
                      const SizedBox(width: 10),
                      Text(
                        HomeTabExtension.getHomeTabName(
                          HomeTab.owners,
                          context,
                        ),
                      )
                    ]),
                  ),
                ),
              ],
              onTap: (index) {
                context.goNamed(HomeTabExtension.fromValue(index).path);
              }),
          Expanded(child: child)
        ]),
      ),
    );
  }
}

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
