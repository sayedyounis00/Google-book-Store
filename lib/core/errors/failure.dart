import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection TimeOut");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send TimeOut");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive TimeOut");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "TimeOut");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request Was Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "connectionError");
      case DioExceptionType.unknown:
        return ServerFailure(errMessage: "Request unknown");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic errorResponse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: errorResponse["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: "your request NOt Found,try again later");
    } else if (statusCode == 500) {
      return ServerFailure(errMessage: "Internal Server Error, Try Later");
    } else {
      return ServerFailure(errMessage: "Opps There is an Error, pls Try again");
    }
  }
}
