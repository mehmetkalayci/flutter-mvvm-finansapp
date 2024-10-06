import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../viewmodels/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel _loginViewModel = Get.put(LoginViewModel());

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // Sync the text controllers with the observable variables
    _usernameController.text = _loginViewModel.username.value;
    _passwordController.text = _loginViewModel.password.value;



    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 140),

            TextField(
              controller: _usernameController,
              onChanged: (value) => _loginViewModel.username.value = value,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16),

            TextField(
              controller: _passwordController,
              onChanged: (value) => _loginViewModel.password.value = value,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16),

            Obx(() => _loginViewModel.isLoading.value
                ? CircularProgressIndicator()
                : ElevatedButton(
              onPressed: () {
                _loginViewModel.login();
              },
              child: Text('Login'),
            )),
          ],
        ),
      ),
    );
  }
}
