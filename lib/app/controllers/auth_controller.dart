import 'dart:ffi';

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_app/app/routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get AuthS => auth.authStateChanges();

  void SignIn(String Email, String Pass) async {
    try {
      final credential =
          await auth.signInWithEmailAndPassword(email: Email, password: Pass);
      Get.offAllNamed(Routes.MAINPAGE);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  void signIn(String Email, String Pass) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: Email,
        password: Pass,
      );

      Get.offAllNamed(Routes.LOGIN);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
