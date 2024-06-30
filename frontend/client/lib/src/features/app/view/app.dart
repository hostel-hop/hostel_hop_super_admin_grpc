import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hostel_hop_super_admin/main.dart';
import 'package:hostel_hop_super_admin/src/features/home/view/home_page.dart';
import 'package:hostel_hop_super_admin/src/features/login/view/login_page.dart';
import 'package:hostel_hop_super_admin/src/features/property_owners/view/property_owners_page.dart';
import 'package:hostel_hop_super_admin/src/features/session/cubit/session_cubit.dart';
import 'package:hostel_hop_super_admin/src/features/wallets/view/wallets_page.dart';
import 'package:hostel_hop_super_admin/src/shared/theme/color_themes.dart';
import 'package:hostel_hop_super_admin/src/shared/theme/text_themes.dart';

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
              GoRoute(
              name: 'wallets',
              path: '/wallets',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: WalletsPage(),
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
        textTheme: TextTheme(titleMedium: TextThemes.primary.bodyMedium),
        scaffoldBackgroundColor: ColorThemes.lightGrey,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            foregroundColor: ColorThemes.primary,
          ),
        ),
        highlightColor: ColorThemes.light,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          toolbarTextStyle: TextThemes.primary.bodyMedium,
        ),
        tabBarTheme: const TabBarTheme(
          labelPadding: EdgeInsets.zero,
        ),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              secondary: ColorThemes.secondary,
              primary: ColorThemes.primary,
              tertiary: ColorThemes.lightGrey,
            ),
        primaryTextTheme: TextTheme(
          bodyLarge: TextThemes.primary.bodyLarge,
          bodyMedium: TextThemes.primary.bodyMedium,
          bodySmall: TextThemes.primary.bodySmall,
          headlineMedium: TextThemes.primary.headlineMedium,
          headlineSmall: TextThemes.primary.headlineSmall,
          titleLarge: TextThemes.primary.titleLarge,
          titleMedium: TextThemes.primary.titleMedium,
          titleSmall: TextThemes.primary.titleSmall,
          labelLarge: TextThemes.primary.labelLarge,
          labelMedium: TextThemes.primary.labelMedium,
          labelSmall: TextThemes.primary.labelSmall,
        ),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          buttonColor: ColorThemes.green,
          textTheme: ButtonTextTheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          minWidth: double.infinity,
          height: 60,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 60)),
            maximumSize:
                WidgetStateProperty.all(const Size(double.infinity, 60)),
            backgroundColor: WidgetStateProperty.resolveWith((state) {
              if (state.contains(WidgetState.disabled)) {
                return ColorThemes.green.withOpacity(0.25);
              }
              return ColorThemes.green;
            }),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 60)),
            maximumSize:
                WidgetStateProperty.all(const Size(double.infinity, 60)),
            backgroundColor: WidgetStateProperty.resolveWith((state) {
              if (state.contains(WidgetState.disabled)) {
                return ColorThemes.green.withOpacity(0.25);
              }
              return ColorThemes.green;
            }),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          errorStyle: TextThemes.pink.bodyMedium,
          hintStyle: TextThemes.secondary.bodyMedium,
          fillColor: ColorThemes.lightGrey,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 24.5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorThemes.pink),
            borderRadius: BorderRadius.circular(40),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorThemes.pink),
            borderRadius: BorderRadius.circular(40),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      routerConfig: _router,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => getIt<SessionCubit>(),
          child: child,
        );
      },
    );
  }
}
