import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/routes/app_pages.dart';
import 'package:habit_app/theme.dart';

import '../controllers/course_controller.dart';

class CourseView extends GetView<CourseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(backgroundColor: orange, child: ListView()),
        backgroundColor: bg,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    "Course",
                    textAlign: TextAlign.center,
                    style: manrope.copyWith(
                        fontSize: 18, fontWeight: bold, color: eclipse),
                  ),
                  GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: eclipse.withOpacity(0.1)),
                        child: Icon(Icons.people),
                      )),
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
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          "assets/Image/SplashScreen.png",
                        )),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Habit\ncourses".toUpperCase(),
                      style:
                          klasikPurple.copyWith(fontSize: 14, fontWeight: bold),
                    ),
                    Text(
                      "Find what fascinates you as you explore \n these habit courses."
                          .toUpperCase(),
                      style: manrope.copyWith(
                          fontSize: 12, color: eclipse, fontWeight: bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sort By :",
                    style: manrope.copyWith(
                        fontSize: 18, fontWeight: bold, color: eclipse),
                  ),
                  Container(
                    width: 153,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: manrope.copyWith(
                              fontSize: 14, fontWeight: bold, color: eclipse),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: eclipse,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filter",
                          style: manrope.copyWith(
                              fontSize: 14, fontWeight: bold, color: orange),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: orange,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_COURSE);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image.asset(
                          "assets/Image/image1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "30 Day Journal Challenge - Establish a Habit of Daily Journaling",
                                style: manrope.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                    color: eclipse),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2h 41m",
                                        style: manrope.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: eclipse),
                                      ),
                                      Text(
                                        "37 Lessons",
                                        style: manrope.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: eclipse),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: eclipse.withOpacity(0.2)),
                                  )
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
