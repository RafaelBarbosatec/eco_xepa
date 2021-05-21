import 'network_response.dart';

abstract class NetworkClient {
  Future<NetworkResponse<T>> get<T>(
    String path, {
    Map<String, dynamic> queryParameters,
  });

  Future<NetworkResponse<T>> post<T>(
    String path, {
    Map<String, dynamic>? data,
  });
}
