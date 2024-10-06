import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  var welcomeMessage = 'Welcome to the Home Page!'.obs;

  void updateWelcomeMessage() {
    welcomeMessage.value = 'You have refreshed the message!';
  }
}