import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/routes/app_routes.dart';
import 'package:to_do_app/themes/themes.dart';
import 'package:to_do_app/views/screens/log_in_screen/login_screen.dart';

import 'views/screens/detailScreen/detail_screen.dart';
import 'views/screens/homeScreen/home_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'To Do App',
          theme: Themes().lightTheme,
          darkTheme: Themes().darkTheme,
          initialRoute: AppRoutes.detailScreen,
          getPages: AppRoutes.routes,
        home: DetailScreen()
      ),
    );
  }
}
