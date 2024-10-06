import 'package:dio/dio.dart';
import 'interceptors/logging_interceptor.dart';
import 'interceptors/authentication_interceptor.dart';

class DioClient {
  static Dio? _dio;

  static Dio get instance {
    if (_dio == null) {
      _dio = Dio(BaseOptions(
        baseUrl: "https://api.example.com/",
      ));
      _dio!.interceptors.add(LoggingInterceptor());
      //_dio!.interceptors.add(AuthenticationInterceptor());
    }
    return _dio!;
  }
}
