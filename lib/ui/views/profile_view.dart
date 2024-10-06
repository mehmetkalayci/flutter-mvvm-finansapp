import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../viewmodels/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  final ProfileViewModel controller = Get.put(ProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text('Username: ${controller.username.value}')),
            SizedBox(height: 10),
            Obx(() => Text('Email: ${controller.email.value}')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.logout,
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}