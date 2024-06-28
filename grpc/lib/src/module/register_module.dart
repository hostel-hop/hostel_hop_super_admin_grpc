import 'package:dotenv/dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@module
abstract class RegisterModule {
  DotEnv dotEnv() {
    return DotEnv(includePlatformEnvironment: true)..load();
  }

  @preResolve
  Future<Db> db() async {
    final db = await Db.create(dotEnv()['DB_URL']!);

    await db.open();

    return db;
  }
}
