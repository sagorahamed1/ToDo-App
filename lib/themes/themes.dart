import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    ///-------------------------elevated button theme------------------------->
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.red,
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
          color: Colors.white,
          // backgroundColor: Colors.white10,
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.green)
  );




  final darkTheme = ThemeData.dark().copyWith(
    ///-------------------------elevated button theme------------------------->
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.red,
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