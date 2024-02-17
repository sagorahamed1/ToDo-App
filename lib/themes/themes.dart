import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    ///-------------------------elevated button theme------------------------->
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding:  const EdgeInsets.all(20),
          backgroundColor: const Color(0xFFF79E89),
          foregroundColor: Colors.white,
          minimumSize:   Size(double.maxFinite, 46.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          textStyle:  TextStyle(
            fontSize: 16.h,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),


      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Color(0xFF949494))
        )
      ),

      ///-----------------app bar theme------------------>
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          shadowColor: Colors.green)
  );


  final darkTheme = ThemeData.dark().copyWith(
    ///-------------------------elevated button theme------------------------->
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: Color(0xFFF79E89),
          foregroundColor: Colors.white,
          minimumSize: const Size(double.maxFinite, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFF949494))
          )
      ),

      ///-----------------app bar theme------------------>
      appBarTheme: const AppBarTheme(
          centerTitle: false,
          color: Colors.black54,
          elevation: 0,
          shadowColor: Colors.white10)
  );
}