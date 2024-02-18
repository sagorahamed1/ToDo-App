import 'package:get/get.dart';
import 'package:to_do_app/views/screens/register_screen/registaition_screen.dart';

import '../views/screens/log_in_screen/login_screen.dart';


class AppRoutes {
  // static const String registaitionScreen = "/RegistaitionScreen.dart";
  static const String logInScreen = "/LogInScreen.dart";


  static List<GetPage> routes = [
    // GetPage(name: registaitionScreen, page: () => RegistaitionScreen()),
    GetPage(name: logInScreen, page: () => LogInScreen()),

  ];
}