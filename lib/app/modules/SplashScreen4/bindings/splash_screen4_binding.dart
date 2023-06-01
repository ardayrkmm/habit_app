import 'package:get/get.dart';

import '../controllers/splash_screen4_controller.dart';

class SplashScreen4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreen4Controller>(
      () => SplashScreen4Controller(),
    );
  }
}
