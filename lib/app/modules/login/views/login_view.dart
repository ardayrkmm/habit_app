import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';
import 'package:habit_app/app/controllers/auth_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final autC = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bg,
        body: Column(
          children: [
            Container(
                width: double.infinity,
                height: 300,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.transparent,
                      ],
                    ).createShader(bounds);
                  },
                  child: Image.asset(
                    "assets/Image/SplashScreen.png",
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, bg.withOpacity(0.2)]),
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    "WELCOME TO MONUMENTAL HABITS",
                    textAlign: TextAlign.center,
                    style:
                        klasikPurple.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Icon/Gogle.png",
                          width: 23,
                        ),
                        Text(
                          "Continue With Google",
                          style: manrope.copyWith(
                              fontSize: 12, color: eclipse, fontWeight: bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Icon/fb.png",
                          width: 26,
                          height: 26,
                        ),
                        Text(
                          "Continue With Facebook",
                          style: manrope.copyWith(
                              fontSize: 12, color: eclipse, fontWeight: bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Text(
                    "Login with Email",
                    style: manrope.copyWith(
                        fontSize: 16, fontWeight: bold, color: eclipse),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ValueListenableBuilder<Color>(
                    valueListenable: controller.text,
                    builder: (context, color, _) {
                      return TextField(
                        controller: controller.email,
                        style: manrope.copyWith(color: color),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: bg)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(width: 1, color: bg)),
                          filled: true,
                          fillColor: bg,
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: color,
                          ),
                          iconColor: bg,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ValueListenableBuilder<Color>(
                    valueListenable: controller.text,
                    builder: (context, color, _) {
                      return TextField(
                        controller: controller.password,
                        style: manrope.copyWith(color: color),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: bg)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(width: 1, color: bg)),
                          filled: true,
                          fillColor: bg,
                          hintText: "Password",
                          suffixText: "Show",
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: color,
                          ),
                          iconColor: bg,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      autC.SignIn(
                          controller.email.text, controller.password.text);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      padding: EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: orange2),
                      child: Text(
                        "Get Started",
                        textAlign: TextAlign.center,
                        style: manrope.copyWith(
                            fontSize: 16, fontWeight: bold, color: eclipse),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.RESET_PASSWORD);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: manrope.copyWith(fontSize: 14, color: eclipse),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\’t have an account?",
                        style: manrope.copyWith(fontSize: 14, color: eclipse),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.SIGN_IN);
                        },
                        child: Text(
                          "Sign In",
                          style: manrope.copyWith(
                              fontSize: 14, color: eclipse, fontWeight: bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
