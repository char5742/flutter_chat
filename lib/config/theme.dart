import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _primaryTextColor = Color(0xFF666666);
const _secondaryTextColor = Color(0xFF707070);

const _primaryColor = Color(0xFF8FDCFF);
const _primaryColorDart = Color.fromARGB(255, 170, 230, 254);
const _primaryColorLight = Color.fromARGB(255, 161, 222, 252);

ThemeData theme = ThemeData(
  fontFamily: 'Noto Sans JP',
  backgroundColor: const Color(0xFFEEFAFF),
  scaffoldBackgroundColor: const Color(0xFFEEFAFF),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: _primaryColor,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    titleSpacing: 0,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    shadowColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent),
    backgroundColor: _primaryColorDart,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(_primaryColorLight),
  )),
  primaryColor: _primaryColor,
  primaryColorDark: _primaryColorDart,
  primaryColorLight: _primaryColorLight,
  iconTheme: const IconThemeData(color: Colors.white),
  primaryTextTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 24,
      height: 40 / 24,
      fontWeight: FontWeight.bold,
      color: _primaryTextColor,
    ),
    headline2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: _primaryTextColor,
    ),
    headline3: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: _primaryTextColor,
    ),
    headline4: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: _primaryTextColor,
    ),
    headline5: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: _primaryTextColor,
    ),
    headline6: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: _primaryTextColor,
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: _primaryTextColor,
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: _primaryTextColor,
    ),
    bodyText1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: _primaryTextColor,
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: _primaryTextColor,
    ),
    button: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: _primaryTextColor,
    ),
  ),
  errorColor: const Color(0xFFFF5040),
  disabledColor: const Color(0xFFBFBFBF),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF18D5F2)),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF18D5F2)),
    ),
  ),
);
