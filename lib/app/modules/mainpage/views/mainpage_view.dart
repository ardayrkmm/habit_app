import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/modules/home/views/home_view.dart';
import 'package:habit_app/app/modules/comunity/views/comunity_view.dart';
import 'package:habit_app/app/modules/course/views/course_view.dart';
import 'package:habit_app/app/modules/setting/views/setting_view.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';

import '../controllers/mainpage_controller.dart';

class MainpageView extends GetView<MainpageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainpageController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tbindex,
              children: [
                HomeView(),
                CourseView(),
                ComunityView(),
                SettingView()
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.toNamed(Routes.NEW_HABIT);
            },
            backgroundColor: orange,
            child: Image.asset(
              "assets/Icon/plus.png",
              width: 22,
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey.withOpacity(0.1),
                onTap: controller.changeTab,
                showSelectedLabels: false,
                currentIndex: controller.tbindex,
                items: [
                  BottomNavigationBarItem(
                      label: "",
                      icon: controller.tbindex == 0
                          ? Image.asset(
                              "assets/Icon/navbar/homeOn.png",
                              width: 40,
                            )
                          : Opacity(
                              opacity: 0.3,
                              child: Image.asset(
                                "assets/Icon/navbar/homeOn.png",
                                width: 40,
                              ),
                            )),
                  BottomNavigationBarItem(
                      label: "",
                      icon: controller.tbindex == 1
                          ? Image.asset(
                              "assets/Icon/navbar/CourseOf.png",
                              width: 40,
                            )
                          : Opacity(
                              opacity: 0.3,
                              child: Image.asset(
                                "assets/Icon/navbar/CourseOf.png",
                                width: 40,
                              ),
                            )),
                  BottomNavigationBarItem(
                      label: "",
                      icon: controller.tbindex == 2
                          ? Image.asset(
                              "assets/Icon/navbar/CommunityOf.png",
                              width: 40,
                            )
                          : Opacity(
                              opacity: 0.3,
                              child: Image.asset(
                                "assets/Icon/navbar/CommunityOf.png",
                                width: 40,
                              ),
                            )),
                  BottomNavigationBarItem(
                      label: "",
                      icon: controller.tbindex == 3
                          ? Image.asset(
                              "assets/Icon/navbar/Settings.png",
                              width: 40,
                            )
                          : Opacity(
                              opacity: 0.3,
                              child: Image.asset(
                                "assets/Icon/navbar/Settings.png",
                                width: 40,
                              ),
                            )),
                ]),
          ),
        );
      },
    );
  }
}
