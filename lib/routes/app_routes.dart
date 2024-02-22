import 'package:get/get.dart';

import '../views/screens/deletedScreen/deleted_screen.dart';
import '../views/screens/detailScreen/detail_screen.dart';
import '../views/screens/forgotPasswordScreen/forgot_password_screen.dart';
import '../views/screens/homeScreen/home_screen.dart';
import '../views/screens/log_in_screen/login_screen.dart';

class AppRoutes {
  static const String logInScreen = "/LogInScreen";
  static const String homeScreen = "/home_screen";
  static const String detailScreen = "/detail_screen";
  static const String deletedScreen = "/deleted_screen";
  static const String forgotPasswordScreen = "/forgot_password_screen";

  static List<GetPage> get routes => [
    GetPage(name: logInScreen, page: () => LogInScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: detailScreen, page: () => DetailScreen()),
    GetPage(name: deletedScreen, page: () => DeletedScreen()),
    GetPage(name: forgotPasswordScreen, page: () => ForgotPasswordScreen()),
  ];
}
