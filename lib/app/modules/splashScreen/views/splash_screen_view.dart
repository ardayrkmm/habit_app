import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: GestureDetector(
          onTap: () {
            Get.offAllNamed(Routes.SPLASH_SCREEN2);
          },
          child: Container(
              width: double.infinity,
              height: 810,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/Image/SplashScreen.png",
                      ),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Text(
                  "WELCOME TO \nMonumental habits".toUpperCase(),
                  style: klasikPurple.copyWith(fontSize: 40, fontWeight: bold),
                  textAlign: TextAlign.center,
                ),
              )),
        ));
  }
}
