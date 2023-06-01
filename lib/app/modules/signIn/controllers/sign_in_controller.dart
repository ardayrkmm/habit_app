import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();

    password.dispose();

    super.dispose();
  }

  var isCek = false.obs;

  void togleCek(bool value) {
    isCek.value = value;
  }
}
