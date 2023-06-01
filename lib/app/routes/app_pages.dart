import 'package:get/get.dart';

import 'package:habit_app/app/modules/SplashScreen2/bindings/splash_screen2_binding.dart';
import 'package:habit_app/app/modules/SplashScreen2/views/splash_screen2_view.dart';
import 'package:habit_app/app/modules/SplashScreen4/bindings/splash_screen4_binding.dart';
import 'package:habit_app/app/modules/SplashScreen4/views/splash_screen4_view.dart';
import 'package:habit_app/app/modules/SplashScreen5/bindings/splash_screen5_binding.dart';
import 'package:habit_app/app/modules/SplashScreen5/views/splash_screen5_view.dart';
import 'package:habit_app/app/modules/comunity/bindings/comunity_binding.dart';
import 'package:habit_app/app/modules/comunity/views/comunity_view.dart';
import 'package:habit_app/app/modules/course/bindings/course_binding.dart';
import 'package:habit_app/app/modules/course/views/course_view.dart';
import 'package:habit_app/app/modules/detailCourse/bindings/detail_course_binding.dart';
import 'package:habit_app/app/modules/detailCourse/views/detail_course_view.dart';
import 'package:habit_app/app/modules/detailHabit/bindings/detail_habit_binding.dart';
import 'package:habit_app/app/modules/detailHabit/views/detail_habit_view.dart';
import 'package:habit_app/app/modules/home/bindings/home_binding.dart';
import 'package:habit_app/app/modules/home/views/home_view.dart';
import 'package:habit_app/app/modules/login/bindings/login_binding.dart';
import 'package:habit_app/app/modules/login/views/login_view.dart';
import 'package:habit_app/app/modules/mainpage/bindings/mainpage_binding.dart';
import 'package:habit_app/app/modules/mainpage/views/mainpage_view.dart';
import 'package:habit_app/app/modules/newHabit/bindings/new_habit_binding.dart';
import 'package:habit_app/app/modules/newHabit/views/new_habit_view.dart';
import 'package:habit_app/app/modules/profil/bindings/profil_binding.dart';
import 'package:habit_app/app/modules/profil/views/profil_view.dart';
import 'package:habit_app/app/modules/resetPassword/bindings/reset_password_binding.dart';
import 'package:habit_app/app/modules/resetPassword/views/reset_password_view.dart';
import 'package:habit_app/app/modules/setting/bindings/setting_binding.dart';
import 'package:habit_app/app/modules/setting/views/setting_view.dart';
import 'package:habit_app/app/modules/signIn/bindings/sign_in_binding.dart';
import 'package:habit_app/app/modules/signIn/views/sign_in_view.dart';
import 'package:habit_app/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:habit_app/app/modules/splashScreen/views/splash_screen_view.dart';
import 'package:habit_app/app/modules/splashScreen3/bindings/splash_screen3_binding.dart';
import 'package:habit_app/app/modules/splashScreen3/views/splash_screen3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN2,
      page: () => SplashScreen2View(),
      binding: SplashScreen2Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN3,
      page: () => SplashScreen3View(),
      binding: SplashScreen3Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN4,
      page: () => SplashScreen4View(),
      binding: SplashScreen4Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN5,
      page: () => SplashScreen5View(),
      binding: SplashScreen5Binding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.MAINPAGE,
      page: () => MainpageView(),
      binding: MainpageBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.COURSE,
      page: () => CourseView(),
      binding: CourseBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.NEW_HABIT,
      page: () => NewHabitView(),
      binding: NewHabitBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_HABIT,
      page: () => DetailHabitView(),
      binding: DetailHabitBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_COURSE,
      page: () => DetailCourseView(),
      binding: DetailCourseBinding(),
    ),
    GetPage(
      name: _Paths.COMUNITY,
      page: () => ComunityView(),
      binding: ComunityBinding(),
    ),
  ];
}
