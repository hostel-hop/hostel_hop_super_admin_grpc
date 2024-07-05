import 'package:dotenv/dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:supabase/supabase.dart';

@module
abstract class RegisterModule {
  @singleton
  DotEnv dotEnv() {
    return DotEnv(includePlatformEnvironment: true)..load();
  }

  @preResolve
  Future<Db> db() async {
    final db = await Db.create(dotEnv()['DB_DSN']!);

    await db.open();

    return db;
  }

  @LazySingleton()
  SupabaseClient supabaseClient(DotEnv env) {
    if (env['SUPABASE_KEY'] == null || env['SUPABASE_URL'] == null) {
      throw Exception('SUPABASE_KEY and SUPABASE_URL must be set');
    }

    return SupabaseClient(
      env['SUPABASE_URL'] ?? '',
      env['SUPABASE_KEY'] ?? '',
    );
  }
}
