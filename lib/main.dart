import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:habit_app/app/controllers/auth_controller.dart';
import 'package:habit_app/app/modules/SplashScreen2/views/splash_screen2_view.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final autC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: autC.AuthS,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: snapshot.data != null
                  ? Routes.MAINPAGE
                  : Routes.SPLASH_SCREEN,
              getPages: AppPages.routes,
            );
          }
          return MaterialApp(
            home: Scaffold(body: Text("Loading")),
          );
        });
  }
}
