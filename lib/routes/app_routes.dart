import 'package:get/get.dart';
import 'package:to_do_app/views/screens/register_screen/registaition_screen.dart';

import '../views/screens/deletedScreen/deleted_screen.dart';
import '../views/screens/detailScreen/detail_screen.dart';
import '../views/screens/forgotPasswordScreen/forgot_password_screen.dart';
import '../views/screens/homeScreen/home_screen.dart';
import '../views/screens/log_in_screen/login_screen.dart';

class AppRoutes {
  // static const String registaitionScreen = "/RegistaitionScreen.dart";
  static const String logInScreen = "/LogInScreen.dart";
  static const String homeScreen = "/home_screen.dart";
  static const String detailScreen = "/detail_screen.dart";
  static const String deletedScreen = "/detelet_screen.dart";
  static const String forgotPasswordScreen = "/forgot_password_screen.dart";

  static List<GetPage> routes = [
    // GetPage(name: registaitionScreen, page: () => RegistaitionScreen()),
    GetPage(name: logInScreen, page: () => LogInScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: detailScreen, page: () => DetailScreen()),
    GetPage(name: deletedScreen, page: () => DeletedScreen()),
    GetPage(name: forgotPasswordScreen, page: () => ForgotPasswordScreen()),
  ];
}
