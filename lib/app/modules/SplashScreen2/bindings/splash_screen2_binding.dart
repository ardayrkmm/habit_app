import 'package:get/get.dart';

import '../controllers/splash_screen2_controller.dart';

class SplashScreen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreen2Controller>(
      () => SplashScreen2Controller(),
    );
  }
}
