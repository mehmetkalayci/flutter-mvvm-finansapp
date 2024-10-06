// import 'package:dio/dio.dart';
// import '../utils/storage_service.dart';
//
// class AuthenticationInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     final token = StorageService().getToken();
//     if (token != null) {
//       options.headers["Authorization"] = "Bearer $token";
//     }
//     return handler.next(options);
//   }
// }
