import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:dartz/dartz.dart';

final base64EncodedClientData = base64
    .encode(utf8.encode(
        '1a504a40f56c4e25ac43b2623576ea65:0a7c5e8c1b7043c9906bcbc9f150b88d'))
    .toString();

Future<Either<MainFailures, String>> getAccessCode() async {
  try {
    final response = await http
        .post(Uri.https('accounts.spotify.com', '/api/token'), headers: {
      'Authorization': 'Basic $base64EncodedClientData',
      'Content-Type': 'application/x-www-form-urlencoded'
    }, body: {
      'grant_type': 'client_credentials'
    });
    if (response.statusCode == 200) {
      final _response = jsonDecode(response.body);
      return right(_response['access_token']);
    } else {
      return left(const MainFailures.serverFailures());
    }
  } catch (e) {
    log('except');
    log(e.toString());
    return left(const MainFailures.clientFailures());
  }
}
