import 'package:dio/dio.dart';

class DioErrorHandler {
  static String handleError(DioException error) {
    String errorDescription = "";
    if(error.response?.data["message"]!=null){
      return error.response?.data["message"];
    }
    switch (error.type) {
      case  DioExceptionType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case  DioExceptionType.connectionTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case  DioExceptionType.unknown:
        errorDescription = "Connection to API server failed due to internet connection";
        break;
      case  DioExceptionType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case  DioExceptionType.badResponse:
        errorDescription = _handleBadResponse(error);
        break;
      case  DioExceptionType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
      case  DioExceptionType.badCertificate:
        errorDescription = "Bad certificate error";
        break;
      case  DioExceptionType.badResponse:
        errorDescription = "Bad response error";
        break;
      default:
        errorDescription = "Unexpected error occurred";
        break;
    }
    return errorDescription;
  }

  static String _handleBadResponse(DioException error) {
    String errorDescription = "";
    switch (error.response?.statusCode) {
      case 400:
        errorDescription = "Bad request";
        break;
      case 401:
        errorDescription = "Unauthorized request";
        break;
      case 403:
        errorDescription = "Forbidden request";
        break;
      case 404:
        errorDescription = "Not found";
        break;
      case 500:
        errorDescription = "Internal server error";
        break;
      case 369:
        errorDescription = "token expired";
      default:
        errorDescription = "Received invalid status code: ${error.response?.statusCode}";
    }
    return errorDescription;
  }

  static int getStatusCode(DioException error) {
    return error.response?.statusCode ??0;
  }
}