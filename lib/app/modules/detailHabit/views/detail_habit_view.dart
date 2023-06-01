import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_habit_controller.dart';

class DetailHabitView extends GetView<DetailHabitController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailHabitView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailHabitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
