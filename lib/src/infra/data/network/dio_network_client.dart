import 'dart:async';

import 'package:dio/dio.dart';

import 'network_client.dart';
import 'network_error.dart';
import 'network_response.dart';

class DioNetworkClient implements NetworkClient {
  late Dio _dio;
  final String baseUrl;

  DioNetworkClient({required this.baseUrl}) {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
  }

  @override
  Future<NetworkResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio
        .get(path, queryParameters: queryParameters)
        .then((value) => _implThen<T>(value))
        .catchError((error) => _implError<T>(error));
  }

  @override
  Future<NetworkResponse<T>> post<T>(
    String path, {
    Map<String, dynamic>? data,
  }) {
    return _dio
        .post(path, data: data)
        .then((value) => _implThen<T>(value))
        .catchError((error) => _implError<T>(error));
  }

  NetworkResponse<T> _implThen<T>(value) {
    return NetworkResponse<T>(
      data: value.data,
      headers: value.headers.map,
      statusCode: value.statusCode,
    );
  }

  Future<NetworkResponse<T>> _implError<T>(error) {
    if (error is DioError) {
      throw NetworkError(
        error: error.error,
        response: NetworkResponse<T>(
          data: error.response?.data,
          headers: error.response?.headers.map,
          statusCode: error.response?.statusCode,
        ),
      );
    } else {
      throw error;
    }
  }
}
