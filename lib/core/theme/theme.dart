import 'package:clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPallete.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppPallete.backgroundColor,
      ),
      chipTheme: const ChipThemeData(
        backgroundColor: AppPallete.backgroundColor,
        side: BorderSide.none,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(30),
        border: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(AppPallete.gradient2),
        errorBorder: _border(AppPallete.errorColor),
      ));
}