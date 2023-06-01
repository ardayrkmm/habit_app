import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  //TODO: Implement HomeController
  RxBool isDrawerOpen = false.obs;

  final RxDouble drawerPosition = 0.0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
    if (isDrawerOpen.value) {
      drawerPosition.value = 250.0;
    } else {
      drawerPosition.value = 0.0;
    }
  }
}
