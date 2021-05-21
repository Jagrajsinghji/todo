import 'package:dio/dio.dart';
import 'package:todo/Utils/api_base.dart';

class AuthBloc {
  static AuthBloc _instance;

  AuthBloc._private();

  Dio _dio = APIBase.getDio();

  factory AuthBloc.instance() {
    _instance ??= AuthBloc._private();
    return _instance;
  }

//TODO: implement APIs, jagga
}
