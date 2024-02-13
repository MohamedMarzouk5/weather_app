import 'package:weather_app_task_mohamed_ebrahim/model/error_model/error_massege_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({
    required this.errorMessageModel,
  });
}

class LocalDataException implements Exception {
  final String message;

  LocalDataException(this.message);
}
