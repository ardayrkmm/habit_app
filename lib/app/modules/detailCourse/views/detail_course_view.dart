import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/theme.dart';

import '../controllers/detail_course_controller.dart';

class DetailCourseView extends GetView<DetailCourseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(55),
            child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 20,
                ),
                child: AppBar(
                  leading: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: eclipse.withOpacity(0.1)),
                        child: Image.asset("assets/Icon/backIcon.png"),
                      )),
                  title: Text(
                    '30 Day Journal Challenge...',
                    style: manrope.copyWith(
                        color: eclipse, fontWeight: bold, fontSize: 18),
                  ),
                  centerTitle: true,
                  backgroundColor: bg,
                  elevation: 0,
                ))),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  height: 199,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/Image/image1.png"))),
                  child: Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 2)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(),
              ],
            ),
          ),
        ));
  }
}
