import 'package:get/get.dart';

import '../controllers/splash_screen3_controller.dart';

class SplashScreen3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreen3Controller>(
      () => SplashScreen3Controller(),
    );
  }
}
