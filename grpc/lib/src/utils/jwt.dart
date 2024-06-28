// ignore_for_file: public_member_api_docs
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dotenv/dotenv.dart';
import 'package:get_it/get_it.dart';

mixin JWTUtilis {
  static final String secretKey = GetIt.instance.get<DotEnv>()['JWT_SECRET']!;

  /// check if the JWT is valid
  static bool isTokenValidForSuperAdmin(String token) {
    try {
      JWT.verify(token, SecretKey(secretKey));

      final decoded = JWT.decode(token);

      if ((decoded.payload as Map<String, dynamic>)['user_metadata']['role'] !=
          'hostel_hop_super_admin') {
        return false;
      }

      return true;
    } on JWTException {
      return false;
    } catch (_) {
      return false;
    }
  }
}
