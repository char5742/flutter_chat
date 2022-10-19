import 'package:flutter/material.dart';

const _coreColor = Color(0xFF00b2d6);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Noto Sans JP',
  brightness: Brightness.dark,
  colorSchemeSeed: _coreColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(const Color(0xFF4ed6fb)),
  )),
);
ThemeData theme = ThemeData(
  useMaterial3: true,
  colorSchemeSeed: _coreColor,
  fontFamily: 'Noto Sans JP',
  // appBarTheme: const AppBarTheme(
  //   titleSpacing: 0,
  //   titleTextStyle: TextStyle(
  //     fontSize: 24,
  //   ),
  //   shadowColor: Colors.transparent,
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //       statusBarBrightness: Brightness.light,
  //       statusBarColor: Colors.transparent),
  // ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(const Color(0xFF00677d)),
  )),
);
