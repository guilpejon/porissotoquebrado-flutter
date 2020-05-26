import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:porissotoquebrado/helpers/config.dart';
import 'package:porissotoquebrado/models/product.dart';

class Api {
  Api(this.url);

  final String url;

  String encodePayload({String payload = ''}) {
    final claimSet = JwtClaim(
      issuer: 'Dart Server',
      subject: '',
      issuedAt: DateTime.now(),
      maxAge: const Duration(hours: 12),
    );
    const String secret = Properties.environment == 'development'
        ? Properties.developmentJwtSecret
        : Properties.productionJwtSecret;
    return issueJwtHS256(claimSet, secret);
  }

  Future getData() async {
    http.Response response = await http.get(
      url,
      headers: {HttpHeaders.authorizationHeader: "Bearer ${encodePayload()}"},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
