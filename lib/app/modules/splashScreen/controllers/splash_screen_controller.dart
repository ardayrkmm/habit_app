import 'dart:async';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController
  // @override
  // void onReady() {
  //   // TODO: implement onReady
  //   Timer(Duration(seconds: 3), () {
  //     Get.offAllNamed(Routes.SPLASH_SCREEN2);
  //   });
  //   super.onReady();
  // }

  @override
  void onInit() {
    // TODO: implement onInit
    Timer(Duration(seconds: 3), () {
      Get.offAllNamed(Routes.SPLASH_SCREEN2);
    });
    super.onInit();
  }
}
