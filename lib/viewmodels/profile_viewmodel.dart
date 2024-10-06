import 'package:get/get.dart';

class ProfileViewModel extends GetxController {
  var username = 'John Doe'.obs;
  var email = 'john.doe@example.com'.obs;

  void logout() {
    Get.offAllNamed('/login');
  }
}