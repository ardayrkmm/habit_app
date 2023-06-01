import 'package:get/get.dart';

import '../controllers/splash_screen5_controller.dart';

class SplashScreen5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreen5Controller>(
      () => SplashScreen5Controller(),
    );
  }
}
