import 'package:flutter/material.dart';

class MyTheme{
  static const blue = Color(0xFF0e57e0);
  static const black = Color(0xFF17181c);
  static const white = Color(0xFF17181c);



  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(
    ),
    textTheme:TextTheme(),

  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(

    ),


  );
}