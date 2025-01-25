import 'package:ecommerce_application/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness:  Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme:TTextTheme.lightTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightTheme
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness:  Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme:TTextTheme.darkTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkTheme
  );
}