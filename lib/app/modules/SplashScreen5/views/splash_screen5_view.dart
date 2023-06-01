import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';

import '../controllers/splash_screen5_controller.dart';

class SplashScreen5View extends GetView<SplashScreen5Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Text(
              "JOIN A SUPPORTIVE COMMUNITY",
              style: klasikPurple.copyWith(fontSize: 26, fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/Ilustrasi/IllustrationSplash4.png",
              height: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We can help you to be a better version of yourself.",
              style: manrope.copyWith(
                  color: eclipse, fontSize: 17, fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(Routes.LOGIN);
              },
              child: Container(
                width: double.infinity,
                height: 60,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: orange2),
                child: Text(
                  "Get Started",
                  textAlign: TextAlign.center,
                  style: manrope.copyWith(
                      fontSize: 16, fontWeight: bold, color: eclipse),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
