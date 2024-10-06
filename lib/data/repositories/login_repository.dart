import 'package:dio/dio.dart';

import '../../core/network/dio_client.dart';

class LoginRepository {
  final Dio _dioClient = DioClient.instance;

  Future<Map<String, dynamic>?> login(String username, String password) async {
    try {
      final response = await _dioClient.post(
        'https://dummyjson.com/auth/login',
        data: {
          'username': username,
          'password': password,
        },
      );
      return response.data;
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }
}
