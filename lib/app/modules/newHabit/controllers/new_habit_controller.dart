import 'package:get/get.dart';

class NewHabitController extends GetxController {
  //TODO: Implement NewHabitController

  RxBool isToggleOn = false.obs;

  void toggle() {
    isToggleOn.toggle();
  }

  void setToggle(bool newValue) {
    isToggleOn.value = newValue;
  }
}
