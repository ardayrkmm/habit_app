import 'package:get/get.dart';

import '../controllers/detail_habit_controller.dart';

class DetailHabitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailHabitController>(
      () => DetailHabitController(),
    );
  }
}
