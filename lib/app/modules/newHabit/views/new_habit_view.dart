import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/theme.dart';

import '../controllers/new_habit_controller.dart';
import 'package:flutter_switch/flutter_switch.dart';

class NewHabitView extends GetView<NewHabitController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
              child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: eclipse.withOpacity(0.1)),
                        child: Image.asset("assets/Icon/backIcon.png"),
                      )),
                  Expanded(
                    child: Text(
                      "New Habit",
                      textAlign: TextAlign.center,
                      style: manrope.copyWith(
                          fontSize: 18, fontWeight: bold, color: eclipse),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: manrope.copyWith(color: orange),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: bg)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(width: 1, color: bg)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 49,
                    height: 49,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Image.asset("assets/Icon/readBook.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Habit Frequency",
                          textAlign: TextAlign.center,
                          style: manrope.copyWith(
                              fontSize: 16, fontWeight: bold, color: eclipse),
                        ),
                        Row(
                          children: [
                            Text(
                              "Custom",
                              textAlign: TextAlign.center,
                              style: manrope.copyWith(
                                  fontSize: 16,
                                  fontWeight: bold,
                                  color: orange),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: orange,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reminder",
                          textAlign: TextAlign.center,
                          style: manrope.copyWith(
                              fontSize: 16, fontWeight: bold, color: eclipse),
                        ),
                        Row(
                          children: [
                            Text(
                              "Custom",
                              textAlign: TextAlign.center,
                              style: manrope.copyWith(
                                  fontSize: 16,
                                  fontWeight: bold,
                                  color: orange),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: orange,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notification",
                            textAlign: TextAlign.center,
                            style: manrope.copyWith(
                                fontSize: 16, fontWeight: bold, color: eclipse),
                          ),
                          Obx(
                            () => FlutterSwitch(
                              activeColor: orange,
                              value: controller.isToggleOn.value,
                              inactiveColor: eclipse,
                              onToggle: (newvalue) {
                                controller.toggle();
                              },
                              activeText: "On",
                              inactiveText: "Off",
                              activeTextColor: Colors.white,
                              inactiveTextColor: Colors.white,
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
