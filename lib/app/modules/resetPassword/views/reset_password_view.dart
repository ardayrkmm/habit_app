import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                        color: eclipse.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(200)),
                    child: Image.asset(
                      "assets/Icon/backIcon.png",
                      width: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Forgot your password?".toUpperCase(),
                textAlign: TextAlign.center,
                style: klasikPurple.copyWith(fontSize: 24, fontWeight: bold),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/Ilustrasi/ResetPassword.png"),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Enter your registered email below to receive password reset instruction",
                      style: manrope.copyWith(color: eclipse, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      style: manrope.copyWith(color: orange),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: bg)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(width: 1, color: bg)),
                        filled: true,
                        fillColor: bg,
                        hintText: "Email",
                        iconColor: bg,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.HOME);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        padding: EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: orange2),
                        child: Text(
                          "Send Reset Link",
                          textAlign: TextAlign.center,
                          style: manrope.copyWith(
                              fontSize: 16, fontWeight: bold, color: eclipse),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember password?",
                    style: manrope.copyWith(fontSize: 14, color: eclipse),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    child: Text(
                      "Login",
                      style: manrope.copyWith(
                          fontSize: 14, color: eclipse, fontWeight: bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
