import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:http/http.dart';
import 'package:moview/utils/constant.dart';

class ApiClient {
  final Client client = Client();

  Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $apiToken',
  };

  Future<Map<String, dynamic>> getHandler(
    BuildContext context, {
    required String endPoint,
    required String body,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        final bodyJson = (json.decode(body) as Map<String, dynamic>)
          ..removeWhere((key, dynamic value) => value == null);

        final response = await client
            .get(
              Uri.https(baseUrl, endPoint, bodyJson),
              headers: headers,
            )
            .timeout(const Duration(seconds: 10));

        final statusCode = response.statusCode;

        if (statusCode == 200 || statusCode == 201) {
          final decodeJson = await jsonDecode(
            utf8.decode(response.bodyBytes),
          ) as Map<String, dynamic>;

          return decodeJson;
        } else {
          throw Exception(L10n.of(context)!.errorApi);
        }
      } else {
        throw Exception(L10n.of(context)!.errorInternet);
      }
    } on TimeoutException {
      throw TimeoutException(L10n.of(context)!.errorTimeout);
    } on SocketException {
      throw SocketException(L10n.of(context)!.errorSocket);
    } on Exception catch (_) {
      throw Exception(L10n.of(context)!.errorException);
    }
  }

  Future<Map<String, dynamic>> postHandler(
    BuildContext context, {
    required String endPoint,
    required String body,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        final response = await client
            .post(
              Uri.https(baseUrl, endPoint),
              body: body,
              headers: headers,
            )
            .timeout(const Duration(seconds: 10));

        final statusCode = response.statusCode;

        if (statusCode == 200 || statusCode == 201) {
          final decodeJson = await jsonDecode(
            utf8.decode(response.bodyBytes),
          ) as Map<String, dynamic>;

          return decodeJson;
        } else {
          throw Exception(L10n.of(context)!.errorApi);
        }
      } else {
        throw Exception(L10n.of(context)!.errorInternet);
      }
    } on TimeoutException {
      throw TimeoutException(L10n.of(context)!.errorTimeout);
    } on SocketException {
      throw SocketException(L10n.of(context)!.errorSocket);
    } on Exception catch (_) {
      throw Exception(L10n.of(context)!.errorException);
    }
  }
}
