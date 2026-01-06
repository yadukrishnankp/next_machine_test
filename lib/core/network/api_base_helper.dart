


import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'api_exception.dart';
import 'dio_client.dart';
import 'dio_error_handler.dart';

class ApiBaseHelper {
  final DioClient dioClient;

  ApiBaseHelper({required this.dioClient});

  /// GET
  Future<Either<ApiException, Response>> get(
      String url, {
        Map<String, dynamic>? params,
        Map<String, dynamic>? data,
        bool isTokenRequired = true,
      }) async {
    try {
      final response = await dioClient.dio.get(
        url,
        queryParameters: params,
        data: data,
        options: Options(extra: {'requiresToken': isTokenRequired}),
      );

      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return Left(ApiException(
          message:
          response.statusMessage ?? "something went wrong",
          statusCode: response.statusCode,
        ));
      }
    } catch (e) {
      return _handleError(e);
    }
  }

  /// POST
  Future<Either<ApiException, Response>> post(
      String url, {
        Map<String, dynamic>? params,
        dynamic data,
        bool isTokenRequired = true,
      }) async {
    try {
      final response = await dioClient.dio.post(
        url,
        queryParameters: params,
        data: data,
        options: Options(extra: {'requiresToken': isTokenRequired}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response);
      } else {
        return Left(ApiException(
          message:
          response.data["message"] ?? "something went wrong",
          statusCode: response.statusCode,
        ));
      }
    } catch (e) {
      print("post request error ${e.toString()}");
      // if(e is DioException){
      //   print("post dio exception ${e.response?.data["message"]??"Bad request"}");
      //   return _handleError(e);
      // }
      // else{
        return _handleError(e);
      // }
    }
  }

  /// PUT
  Future<Either<ApiException, Response>> put(
      String url, {
        Map<String, dynamic>? params,
        dynamic data,
        bool isTokenRequired = true,
      }) async {
    try {
      final response = await dioClient.dio.put(
        url,
        queryParameters: params,
        data: data,
        options: Options(extra: {'requiresToken': isTokenRequired}),
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        return Right(response);
      } else {
        return Left(ApiException(
          message:
          response.statusMessage ?? "something went wrong",
          statusCode: response.statusCode,
        ));
      }
    } catch (e) {
      return _handleError(e);
    }
  }

  /// PATCH
  Future<Either<ApiException, Response>> patch(
      String url, {
        Map<String, dynamic>? params,
        dynamic data,
        bool isTokenRequired = true,
      }) async {
    try {
      final response = await dioClient.dio.patch(
        url,
        queryParameters: params,
        data: data,
        options: Options(extra: {'requiresToken': isTokenRequired}),
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        return Right(response);
      } else {
        return Left(ApiException(
          message:
          response.statusMessage ?? "something went wrong",
          statusCode: response.statusCode,
        ));
      }
    } catch (e) {
      return _handleError(e);
    }
  }

  /// DELETE
  Future<Either<ApiException, Response>> delete(
      String url, {
        Map<String, dynamic>? params,
        dynamic data,
        bool isTokenRequired = true,
      }) async {
    try {
      final response = await dioClient.dio.delete(
        url,
        queryParameters: params,
        data: data,
        options: Options(extra: {'requiresToken': isTokenRequired}),
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        return Right(response);
      } else {
        return Left(ApiException(
          message:
          response.statusMessage ?? "something went wrong",
          statusCode: response.statusCode,
        ));
      }
    } catch (e) {
      return _handleError(e);
    }
  }

  /// File Download
  Future<Either<ApiException, Response>> fileDownload(
      String url, {
        Map<String, dynamic>? params,
        Map<String, dynamic>? data,
        bool isTokenRequired = true,
      }) async {
    try {
      final response = await dioClient.dio.get<List<int>>(
        url,
        queryParameters: params,
        data: data,
        options: Options(
          extra: {'requiresToken': isTokenRequired},
          responseType: ResponseType.bytes,
        ),
      );

      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return Left(ApiException(
          message:
          response.statusMessage ?? "something went wrong",
          statusCode: response.statusCode,
        ));
      }
    } catch (e) {
      return _handleError(e);
    }
  }

  /// Common error handler
  Either<ApiException, Response> _handleError(Object e) {
    if (e is DioException) {
      String errorDescription = DioErrorHandler.handleError(e);
      int statusCode = DioErrorHandler.getStatusCode(e);
      print('Error: $errorDescription');
      return Left(ApiException(message: errorDescription, statusCode: statusCode));
    } else {
      return Left(ApiException(message: "something went wrong"));
    }
  }
}