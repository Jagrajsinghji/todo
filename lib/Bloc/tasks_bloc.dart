import 'package:dio/dio.dart';
import 'package:todo/Models/task.dart';
import 'package:todo/Utils/api_base.dart';
import 'package:todo/Utils/api_routes.dart';

class TasksBloc {
  static TasksBloc _instance;

  TasksBloc._private();

  Dio _dio = APIBase.getDio();

  factory TasksBloc.instance() {
    _instance ??= TasksBloc._private();
    return _instance;
  }

  /// create task
  Future<Response> createTask(Task task) {
    return APIBase.baseFunction(() {
      return _dio.post(APIRoutes.CREATE_TASK, data: task.toMap());
    });
  }

  Future<Response> updateTask(Task task) {
    return APIBase.baseFunction(() {
      return _dio.post(APIRoutes.MODIFY_TASK,
          data: {"unique_id": task.uniqueId, "fields": task.toMap()});
    });
  }

  Future<Response> deleteTask(int taskId) {
    return APIBase.baseFunction(() {
      return _dio.post(APIRoutes.DELETE_TASK, data: {"unique_id": taskId});
    });
  }

  Future<Response> getTasksList() {
    return APIBase.baseFunction(() {
      return _dio.get("https://sleepy-waters-51339.herokuapp.com/api/list",
          options: Options(contentType: "application/json"),
          queryParameters: {"format": "json"});
    });
  }
}
