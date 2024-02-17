import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/themes/themes.dart';
import 'package:to_do_app/views/screens/log_in_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'To Do App',
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
      home: const LogInScreen()
    );
  }
}
