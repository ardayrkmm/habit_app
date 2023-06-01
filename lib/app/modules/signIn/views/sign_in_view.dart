import 'package:flutter/material.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:habit_app/theme.dart';
import 'package:habit_app/app/controllers/auth_controller.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  final SignInController cekC = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    final autC = Get.put(AuthController());
    return Scaffold(
        backgroundColor: bg,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Ilustrasi/signIn.png",
                  width: 180,
                ),
                Text(
                  "Create your account".toUpperCase(),
                  style: klasikPurple.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 32,
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
                    fillColor: Colors.white,
                    hintText: "Nama",
                    prefixIcon: Icon(
                      Icons.person,
                      color: orange,
                    ),
                    iconColor: bg,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: controller.email,
                  style: manrope.copyWith(color: orange),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: bg)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 1, color: bg)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email,
                      color: orange,
                    ),
                    iconColor: bg,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: controller.password,
                  style: manrope.copyWith(color: orange),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: bg)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 1, color: bg)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    suffixText: "Show",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: orange,
                    ),
                    iconColor: bg,
                  ),
                ),
                Row(
                  children: [
                    Obx(() => Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          checkColor: eclipse,
                          value: controller.isCek.value,
                          activeColor: orange2,
                          onChanged: (value) {
                            cekC.isCek.value = !cekC.isCek.value;
                          },
                        )),
                    Text(
                      "Keep me signed in",
                      style: manrope.copyWith(fontSize: 16, color: eclipse),
                    )
                  ],
                ),
                Row(
                  children: [
                    Obx(() => Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          activeColor: orange2,
                          checkColor: eclipse,
                          value: controller.isCek.value,
                          onChanged: (value) {
                            cekC.isCek.value = !cekC.isCek.value;
                          },
                        )),
                    Text(
                      "Email me about special pricing and more",
                      style: manrope.copyWith(fontSize: 16, color: eclipse),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    autC.signIn(
                        controller.email.text, controller.password.text);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: orange2),
                    child: Text(
                      "Create Account",
                      textAlign: TextAlign.center,
                      style: manrope.copyWith(
                          fontSize: 16, fontWeight: bold, color: eclipse),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: 2,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                    Text(
                      "Or sign in with",
                      style: manrope.copyWith(fontSize: 14, color: Colors.grey),
                    ),
                    Container(
                      width: 110,
                      height: 2,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
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
                            "Google",
                            style: manrope.copyWith(
                                fontSize: 16, color: eclipse, fontWeight: bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
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
                            width: 23,
                          ),
                          Text(
                            "Facebook",
                            style: manrope.copyWith(
                                fontSize: 16, color: eclipse, fontWeight: bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "have an account?",
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
          ),
        )));
  }
}
