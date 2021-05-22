import 'package:dio/dio.dart';
import 'package:todo/Utils/api_base.dart';
import 'package:todo/Utils/api_routes.dart';

class AuthBloc {
  static AuthBloc _instance;

  AuthBloc._private();

  Dio _dio = APIBase.getDio();

  factory AuthBloc.instance() {
    _instance ??= AuthBloc._private();
    return _instance;
  }

  Future<Response> signUp(String email, String pass, String username) {
    return APIBase.baseFunction(() {
      return _dio.post(APIRoutes.SIGN_UP,
          data: {"email": email, "password": pass, "username": username});
    });
  }

  Future<Response> signIn(String email, String pass) {
    return APIBase.baseFunction(() {
      return _dio
          .post(APIRoutes.SIGN_UP, data: {"email": email, "password": pass});
    });
  }
}
