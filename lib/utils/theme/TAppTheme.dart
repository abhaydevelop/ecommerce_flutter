import 'package:ecommerce_application/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/outlined_buttom_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_application/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness:  Brightness.light,
    primaryColor: Colors.blue,
    textTheme : TTextTheme.lightTheme,
    chipTheme: TChipTheme.lightTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightTheme,
    checkboxTheme: TCheckboxTheme.lightTheme,
    bottomSheetTheme: TBottomSheetTheme.lightTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightTheme
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness:  Brightness.dark,
      primaryColor: Colors.blue,
      textTheme : TTextTheme.darkTheme,
      chipTheme: TChipTheme.darkTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: TAppBarTheme.darkTheme,
      checkboxTheme: TCheckboxTheme.darkTheme,
      bottomSheetTheme: TBottomSheetTheme.darkTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkTheme
  );
}