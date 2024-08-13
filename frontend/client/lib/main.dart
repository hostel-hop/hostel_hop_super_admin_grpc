import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hostel_hop_super_admin/src/features/app/view/app.dart';
import 'package:hostel_hop_super_admin/src/injector/injector.config.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

GetIt getIt = GetIt.instance;

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Supabase.initialize(
        url: const String.fromEnvironment('SUPABASE_URL'),
        anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
      );

      await getIt.init(environment: Environment.dev);

      final packageInfo = await PackageInfo.fromPlatform();

      if (!kDebugMode) {
        await SentryFlutter.init((options) {
          options
            ..dsn =
                'https://2403428e5d7ccf64803fd1d75325d330@o4506357240496128.ingest.us.sentry.io/4507771622064128'
            ..release =
                'hostel_hop_super_admin@${packageInfo.version}+${packageInfo.buildNumber}';
        });
      }

      runApp(const MyApp());
    },
    (Object error, StackTrace stackTrace) async {
      await Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );
    },
  );
}
