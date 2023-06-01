import 'package:get/get.dart';

import '../controllers/new_habit_controller.dart';

class NewHabitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewHabitController>(
      () => NewHabitController(),
    );
  }
}
