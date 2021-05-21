import 'dart:io';

import 'package:dio/dio.dart';

abstract class APIBase {
  static Dio _dio;

  static Dio getDio() {
    _dio = Dio()
      ..interceptors.add(LogInterceptor(
        responseBody: true,
      ));
    return _dio;
  }

  static Future<Response> baseFunction(ResponseCallback callback) async {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return callback();
    } else
      throw SocketException("No Internet");
  }
}

typedef Future<Response> ResponseCallback();
