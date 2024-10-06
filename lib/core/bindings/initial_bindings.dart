import 'package:get/get.dart';

import '../../data/repositories/transaction_repository.dart';
import '../../ui/views/home_view.dart';
import '../../viewmodels/login_viewmodel.dart';
import '../../viewmodels/profile_viewmodel.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionRepository());
    Get.lazyPut(() => HomeView());
    Get.lazyPut(() => LoginViewModel());
    Get.lazyPut(() => ProfileViewModel());
  }
}
