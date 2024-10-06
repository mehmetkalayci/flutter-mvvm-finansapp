import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/navigation/routes.dart';
import 'core/utils/constants.dart';
import 'firebase_options.dart';

import 'core/bindings/initial_bindings.dart';
import 'ui/views/home_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.AppName,
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.routes,
      home:  HomeView(),
    );
  }
}
