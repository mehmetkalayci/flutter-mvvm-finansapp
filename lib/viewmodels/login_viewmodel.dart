import 'package:get/get.dart';
import '../data/repositories/login_repository.dart';

class LoginViewModel extends GetxController {
  final LoginRepository _loginRepository = LoginRepository();

  // Observables for username, password, accessToken, and loading state
  var username = ''.obs;
  var password = ''.obs;
  var accessToken = ''.obs;
  var isLoading = false.obs;

  Future<void> login() async {
    try {
      isLoading.value = true;

      // Call the repository to perform login
      final response = await _loginRepository.login(username.value, password.value);

      print(response);

      if (response != null) {
        accessToken.value = response['accessToken'];
        Get.offNamed('/home');
      } else {
        Get.snackbar('Login Failed', 'Invalid username or password');
      }
    } finally {
      isLoading.value = false;
    }
  }
}