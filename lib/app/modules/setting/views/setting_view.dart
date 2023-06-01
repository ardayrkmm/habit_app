import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';
import 'package:habit_app/app/controllers/auth_controller.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  final autC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        drawer: Drawer(backgroundColor: orange, child: ListView()),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: eclipse.withOpacity(0.1)),
                            child: Icon(Icons.menu),
                          ));
                    },
                  ),
                  Expanded(
                    child: Text(
                      "Setting",
                      textAlign: TextAlign.center,
                      style: manrope.copyWith(
                          fontSize: 18, fontWeight: bold, color: eclipse),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 28),
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.centerRight,
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          "assets/Ilustrasi/homeIl.png",
                        )),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Check Your Profile".toUpperCase(),
                      style:
                          klasikPurple.copyWith(fontSize: 14, fontWeight: bold),
                    ),
                    Text(
                      "jonathansmith@gmail.com".toUpperCase(),
                      style: manrope.copyWith(
                          fontSize: 12, color: eclipse, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.MAINPAGE);
                      },
                      child: Container(
                        width: 120,
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: orange2),
                        child: Text(
                          "View",
                          textAlign: TextAlign.center,
                          style: manrope.copyWith(
                              fontSize: 12, fontWeight: bold, color: eclipse),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "General",
                style: manrope.copyWith(
                    fontSize: 16, color: eclipse, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: orange2.withOpacity(0.3)),
                      child: Image.asset("assets/Icon/Setting/notif.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notifications",
                            style: manrope.copyWith(
                                fontSize: 14, color: eclipse, fontWeight: bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Customize notifications",
                            style: manrope.copyWith(
                                fontSize: 14,
                                color: eclipse.withOpacity(0.5),
                                fontWeight: bold),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: eclipse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: orange2.withOpacity(0.3)),
                      child: Image.asset("assets/Icon/Setting/more.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "More customization",
                            style: manrope.copyWith(
                                fontSize: 14, color: eclipse, fontWeight: bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Customize it more to fit your usage",
                            style: manrope.copyWith(
                                fontSize: 14,
                                color: eclipse.withOpacity(0.5),
                                fontWeight: bold),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: eclipse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Support",
                style: manrope.copyWith(
                    fontSize: 16, color: eclipse, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: orange2.withOpacity(0.3)),
                      child: Image.asset("assets/Icon/Setting/chatPhone.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Contact",
                        style: manrope.copyWith(
                            fontSize: 14, color: eclipse, fontWeight: bold),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: eclipse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: orange2.withOpacity(0.3)),
                      child: Image.asset("assets/Icon/Setting/Vector.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "FeedBack",
                        style: manrope.copyWith(
                            fontSize: 14, color: eclipse, fontWeight: bold),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: eclipse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: orange2.withOpacity(0.3)),
                      child: Image.asset("assets/Icon/Setting/priva.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Privacy Policy",
                        style: manrope.copyWith(
                            fontSize: 14, color: eclipse, fontWeight: bold),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: eclipse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: orange2.withOpacity(0.3)),
                      child: Image.asset("assets/Icon/Setting/seru.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "About",
                        style: manrope.copyWith(
                            fontSize: 14, color: eclipse, fontWeight: bold),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: eclipse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  autC.logout();
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: orange2.withOpacity(0.3)),
                        child: Image.asset("assets/Icon/Setting/seru.png"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Logout",
                          style: manrope.copyWith(
                              fontSize: 14, color: eclipse, fontWeight: bold),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: eclipse,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
