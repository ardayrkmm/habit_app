import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
                    "HomePage",
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
                      "We first make our habits, \nand then our habits makes us."
                          .toUpperCase(),
                      style:
                          klasikPurple.copyWith(fontSize: 14, fontWeight: bold),
                    ),
                    Text(
                      "- anonymous".toUpperCase(),
                      style: manrope.copyWith(
                          fontSize: 12, color: eclipse, fontWeight: bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          "Habits",
                          style: manrope.copyWith(
                              fontSize: 14, fontWeight: bold, color: eclipse),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                "SUN",
                                style: manrope.copyWith(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                "17",
                                style: manrope.copyWith(
                                  fontSize: 16,
                                  color: eclipse,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                "MON",
                                style: manrope.copyWith(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                "18",
                                style: manrope.copyWith(
                                  fontSize: 16,
                                  color: eclipse,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                "TUE",
                                style: manrope.copyWith(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                "18",
                                style: manrope.copyWith(
                                  fontSize: 16,
                                  color: eclipse,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                "SUN",
                                style: manrope.copyWith(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                "17",
                                style: manrope.copyWith(
                                  fontSize: 16,
                                  color: eclipse,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                "SUN",
                                style: manrope.copyWith(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                "17",
                                style: manrope.copyWith(
                                  fontSize: 16,
                                  color: eclipse,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                "SUN",
                                style: manrope.copyWith(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                "17",
                                style: manrope.copyWith(
                                  fontSize: 16,
                                  color: eclipse,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            "Read A Book",
                            style: manrope.copyWith(
                                fontSize: 14, fontWeight: bold, color: eclipse),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: red),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: red),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: red),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: red),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: red),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
