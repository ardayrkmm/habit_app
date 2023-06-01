import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/theme.dart';

import '../controllers/comunity_controller.dart';

class ComunityView extends GetView<ComunityController> {
  final aut = Get.put(ComunityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        drawer: Drawer(backgroundColor: orange, child: ListView()),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
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
                      "Community",
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
                StreamBuilder<QuerySnapshot<Object?>>(
                  stream: aut.strDt(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      var list = snapshot.data!.docs;
                      return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: list.length,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(top: 14),
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(200),
                                            color: eclipse.withOpacity(0.1)),
                                        child: Icon(Icons.people),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${(list[index].data() as Map<String, dynamic>)["Nama"]}",
                                          style: manrope.copyWith(
                                              fontSize: 14,
                                              fontWeight: bold,
                                              color: eclipse),
                                        ),
                                        Text(
                                          "41m ago",
                                          style: manrope.copyWith(
                                              fontSize: 14,
                                              fontWeight: bold,
                                              color: eclipse.withOpacity(0.5)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(200),
                                            color: eclipse.withOpacity(0.1)),
                                        child: Icon(Icons.share),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "${(list[index].data() as Map<String, dynamic>)["status"]}",
                                style: manrope.copyWith(
                                    fontSize: 14,
                                    fontWeight: bold,
                                    color: eclipse),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/Icon/love.png",
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "8.1K",
                                        style: manrope.copyWith(
                                            fontSize: 8,
                                            color: eclipse,
                                            fontWeight: bold),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/Icon/com.png",
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "22",
                                        style: manrope.copyWith(
                                            fontSize: 8,
                                            color: eclipse,
                                            fontWeight: bold),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }
                    return Center(
                      child: Text("Loading"),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
