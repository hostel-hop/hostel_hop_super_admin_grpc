import 'dart:async';
import 'dart:io';

import 'package:alfred/alfred.dart';
import 'package:dotenv/dotenv.dart';
import 'package:loggy/loggy.dart';

FutureOr isAuthenticatedMiddleware(HttpRequest req, HttpResponse res) {
  if (req.headers.value('Authorization') == null) {
    throw AlfredException(
        401, {'error': 'You are not authorized to perform this operation'});
  }
}

FutureOr errorHandler(HttpRequest req, HttpResponse res) {
  res.statusCode = 500;

  return {
    'status': 'FAIL',
    'code': res.statusCode,
    'message': 'error not handled'
  };
}

FutureOr missingHandler(HttpRequest req, HttpResponse res) {
  res.statusCode = 404;
  return {'status': 'FAIL', 'code': res.statusCode, 'message': 'not found'};
}

void main() async {
  Loggy.initLoggy(logPrinter: PrettyPrinter());

  final app = Alfred(onInternalError: errorHandler, onNotFound: missingHandler);

  app.all('*', cors(origin: '*'));

  var env = DotEnv(includePlatformEnvironment: true)..load();

  app.all('/api/*', (req, res) => 'Hello World!');

  if ('dev' != env['ENV']) {
    var baseDir = './app/bin';
    app.get('/*', (req, res) {
      if (!req.uri.path.contains(".")) {
        return File('$baseDir/build/web/index.html');
      }
      return Directory('$baseDir/build/web');
    });
  }

  final envPort = Platform.environment['PORT'];

  app.printRoutes();

  final server = await app.listen(envPort != null ? int.parse(envPort) : 8080);

  print("Listening on ${server.port}");
}
