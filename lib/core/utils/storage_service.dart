import 'package:get_storage/get_storage.dart';

class StorageService {
  final GetStorage _box = GetStorage();

  // Save a token to local storage
  void saveToken(String token) {
    _box.write('token', token);
  }

  // Retrieve a token from local storage
  String? getToken() {
    return _box.read('token');
  }

  // Save user information to local storage
  void saveUserInfo(String username, String email) {
    _box.write('username', username);
    _box.write('email', email);
  }

  // Retrieve username from local storage
  String? getUsername() {
    return _box.read('username');
  }

  // Retrieve email from local storage
  String? getEmail() {
    return _box.read('email');
  }

  // Clear all stored data, typically used during logout
  void clearAll() {
    _box.erase();
  }
}