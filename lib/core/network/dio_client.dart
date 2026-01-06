

import 'dart:developer';


import 'package:dio/dio.dart';

import '../config/app_config.dart';
import 'dio_error_handler.dart';

class DioClient {
  final Dio dio;
  String? _accessToken;
  String? _refreshToken;
  bool _isRefreshing = false;
  List<Function> _requestQueue = [];


  DioClient() : dio = Dio(BaseOptions(
    baseUrl: AppConfig.BASE_URL,
    connectTimeout: Duration(seconds: 100),
    receiveTimeout: Duration(seconds: 100),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  )) {
    print("messageDioClient");
    initializeTokens();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        if (options.extra['requiresToken'] == true) {
          print("request ${_accessToken}");
          options.headers['Authorization'] = 'Bearer $_accessToken';
        }
        return handler.next(options);
      },
      onError: (DioException err, handler) async {
        print("request url ${err.requestOptions.uri}");
        print("request data ${err.requestOptions.data}");
        print("onError :${err.response?.statusCode.toString()} ${err.response?.toString()}");
        if (err.response?.statusCode == 401) {
          _addToQueue(() async {
            final opts = Options(
              method: err.requestOptions.method,
              headers: {
                ...err.requestOptions.headers,
                'Authorization': 'Bearer $_accessToken',
              },
            );

            final cloneReq = await dio.request(
              err.requestOptions.path,
              options: opts,
              data: err.requestOptions.data,
              queryParameters: err.requestOptions.queryParameters,
            );
            handler.resolve(cloneReq);
          });
          if (!_isRefreshing) {
            print("_isRefreshing");
            _isRefreshing = true;
            final isSuccess = await _refreshAccessToken();
            _isRefreshing = false;
            if (isSuccess) {
              print("_processRequestQueue");
              _processRequestQueue();
            } else {
              print("_requestQueue.clear()");
              _requestQueue.clear();
              return handler.reject(
                DioException(
                  requestOptions: err.requestOptions,
                  error: "Refresh token failed",
                  type: DioExceptionType.badResponse,
                  response: Response(
                    requestOptions: err.requestOptions,
                    statusCode: 369,
                    data: {
                      "message": "Refresh token expired. Please login again."
                    },
                  ),
                ),
              );
            }
          }
          return;
        }

        String errorDescription = DioErrorHandler.handleError(err);
        print('Errorr: $errorDescription');
        // return handler.next(err);
        return handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: err.response?.data["message"]??"Bad Request",
            type: DioExceptionType.badResponse,
            response: Response(
              requestOptions: err.requestOptions,
              statusCode: 400,
              data: {
                "message":err.response?.data["message"]??"Bad Request",
              },
            ),
          ),
        );
      },
    ));
  }

  Future<void> initializeTokens() async {
    log("_initializeTokens");

  }

  Future<bool> _refreshAccessToken() async {
    log("_refreshAccessToken");
    try {
      Dio _dio=Dio(
          BaseOptions(
              baseUrl: AppConfig.BASE_URL,
              headers: {
                'Content-Type': 'application/json'
              }
          )
      );
      final response = await _dio.post(
        '/refresh-token',
        data: {'refreshToken': _refreshToken
        },
      );
      print("_refreshAccessToken ${response.data.toString()}");
      if (response.statusCode == 200) {
        if(response.data["success"]==true){
          _accessToken= response.data["data"]["token"];
          _refreshToken=response.data["data"]["refreshToken"];

        }
        return true;
      }
      else if(response.statusCode == 400 || response.statusCode== 401) {
        return false;
      }
    } on DioException catch  ( e) {
      log("_refreshAccessToken ${e.message}");
      return false;
    }
    return false;
  }





  void _addToQueue(Function request) {
    print("_addToQueue");
    _requestQueue.add(request);
  }

  void _processRequestQueue() {
    for (var request in _requestQueue) {
      print("_processRequestQueue");
      request();
    }
    _requestQueue.clear();
  }
}