import 'package:dio/dio.dart';
import 'package:todo/Utils/api_base.dart';
import 'package:todo/Utils/api_routes.dart';

class CommonBloc {
  static CommonBloc _instance;
  static const CHAT_BOT_API_KEY = "e3e0dae0-b98a-11eb-8c18-0b2bda441b44";

  CommonBloc._private();

  Dio _dio = APIBase.getDio();

  factory CommonBloc.instance() {
    _instance ??= CommonBloc._private();
    return _instance;
  }

  Future<Response> chatBotQuery(String query) {
    return APIBase.baseFunction(() {
      return _dio.get(APIRoutes.DELETE_TASK,
          queryParameters: {"q": query, "apikey": CHAT_BOT_API_KEY});
    });
  }

  Future<Response> reportBug(int userId, String text) {
    return APIBase.baseFunction(() {
      return _dio.get(APIRoutes.DELETE_TASK,
          queryParameters: {"userId": userId, "text": text});
    });
  }
}
