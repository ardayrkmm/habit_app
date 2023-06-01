import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habit_app/theme.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  ValueNotifier<Color> text = ValueNotifier<Color>(eclipse.withOpacity(0.5));
  @override
  void onInit() {
    super.onInit();
    email.addListener(_OnTextChanged);
    password.addListener(_OnTextChanged);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.removeListener(_OnTextChanged);
    email.dispose();
    password.removeListener(_OnTextChanged);
    password.dispose();
    text.dispose();
    super.dispose();
  }

  void _OnTextChanged() {
    String Text = email.text;
    if (Text.isNotEmpty) {
      text.value = orange;
    } else {
      text.value = eclipse.withOpacity(0.5);
    }
  }
}
