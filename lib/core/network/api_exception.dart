
import 'package:dio/dio.dart';

class ApiException {
  String message;
  int? statusCode;
  ApiException({required this.message, this.statusCode});
}