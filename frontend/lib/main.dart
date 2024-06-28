import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hostel_hop_super_admin/src/features/app/view/app.dart';
import 'package:hostel_hop_super_admin/src/injector/injector.config.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: const String.fromEnvironment('SUPABASE_URL'),
    anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  await getIt.init(environment: Environment.dev);

  runApp(const MyApp());
}
