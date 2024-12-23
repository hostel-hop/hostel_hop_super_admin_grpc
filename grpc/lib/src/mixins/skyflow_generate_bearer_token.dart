import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jose/jose.dart';

mixin SkyflowGenerateBearerToken {
  Future<Map<String, dynamic>?> _getSkyflowCredentials(
      String credentialsEncoded) async {
    try {
      final jsonEncoded = utf8.decode(base64.decode(credentialsEncoded));

      final creds = jsonDecode(jsonEncoded) as Map<String, dynamic>;

      return creds;
    } catch (e) {
      return null;
    }
  }

  Future<String> _getSignedJWT(Map<String, dynamic> creds) async {
    final claims = JsonWebTokenClaims.fromJson({
      'iss': creds['clientID'],
      'key': creds['keyID'],
      'aud': creds['tokenURI'],
      'exp':
          DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/
              1000,
      'sub': creds['clientID'],
    });

    final builder = JsonWebSignatureBuilder()
      ..jsonContent = claims.toJson()
      ..addRecipient(
        JsonWebKey.fromPem(
          creds['privateKey'] as String,
          keyId: creds['keyID'] as String,
        ),
      );

    final signedJWT = builder.build().toCompactSerialization();

    return signedJWT;
  }

  Future<String> _getBearerToken(
    String signedJWT,
    Map<String, dynamic> creds,
    
  ) async {
    final body = {
      'grant_type': 'urn:ietf:params:oauth:grant-type:jwt-bearer',
      'assertion': signedJWT,
    };

    final tokenURI = creds['tokenURI'] as String;

    final response = await http.post(
      Uri.parse(tokenURI),
      body: jsonEncode(body),
    );

    final json = jsonDecode(response.body);

    return json['accessToken'] as String;
  }

  Future<String> generateBearerToken(String credentialsEncoded) async {
    final creds = await _getSkyflowCredentials(credentialsEncoded);

    if (creds == null) {
      throw Exception('Skyflow credentials not found');
    }

    final signedJWT = await _getSignedJWT(creds);

    return _getBearerToken(signedJWT, creds);
  }
}
