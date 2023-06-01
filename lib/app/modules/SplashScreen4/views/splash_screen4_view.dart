import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';

import '../controllers/splash_screen4_controller.dart';

class SplashScreen4View extends GetView<SplashScreen4Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Text(
              "KEEP TRACK OF YOUR PROGRESS",
              style: klasikPurple.copyWith(fontSize: 26, fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/Ilustrasi/IllustrationSplash3.png",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skip",
                  style: manrope.copyWith(
                      color: eclipse, fontSize: 17, fontWeight: bold),
                ),
                Row(
                  children: [
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: eclipse,
                          boxShadow: [
                            BoxShadow(
                                color: eclipse, blurRadius: 60, spreadRadius: 3)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAllNamed(Routes.SPLASH_SCREEN5);
                  },
                  child: Text(
                    "Next",
                    style: manrope.copyWith(
                        color: eclipse, fontSize: 17, fontWeight: bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
