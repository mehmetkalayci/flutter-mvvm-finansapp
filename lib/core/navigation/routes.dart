import 'package:get/get.dart';

import '../../ui/views/home_view.dart';
import '../../ui/views/login_view.dart';
import '../../ui/views/profile_view.dart';

class AppRoutes {
  static const String home = '/home';
  static const String login = '/login';
  static const String profile = '/profile';

  static List<GetPage> routes = [
    GetPage(name: home, page: () => HomeView()),
    GetPage(name: login, page: () => LoginView()),
    GetPage(name: profile, page: () => ProfileView()),
  ];
}