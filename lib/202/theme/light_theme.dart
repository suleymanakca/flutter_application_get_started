import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20)))),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
        onPrimary: _lightColor.blueMania,
        onSecondary: _lightColor.blueMania,
      )),
      colorScheme: const ColorScheme.light(),
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.green),
          fillColor: MaterialStateProperty.all(Colors.green)),
      textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1: TextStyle(fontSize: 25, color: _lightColor._textColor)),
    );
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 175, 76, 96);
  final Color blueMania = const Color.fromARGB(255, 10, 27, 217);
}
