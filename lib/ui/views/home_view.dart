import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../viewmodels/home_viewmodel.dart';
import '../../viewmodels/login_viewmodel.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel controller = Get.put(HomeViewModel());
  final LoginViewModel _loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(children: [

        Center(
          child: Obx(() => Text(controller.welcomeMessage.value)),
        ),
        Center(
          child: Obx(() => Text(_loginViewModel.accessToken.value)),
        )

      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.updateWelcomeMessage,
        child: Icon(Icons.refresh),
      ),
    );
  }
}