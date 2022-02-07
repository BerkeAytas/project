import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFEC2627);
const Color secondaryColor = Color(0xFFD6D7D7);
const Color whiteColor = Color(0xFFffffff);

final costumThemeData = ThemeData(
  scaffoldBackgroundColor: whiteColor,
  primaryColorLight: const Color(0xFF3BDAED),
  unselectedWidgetColor: Colors.grey[300],
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    elevation: 0,
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 3,
    clipBehavior: Clip.antiAliasWithSaveLayer,
  ),
  primaryColor: const Color(0xFF3BDAED),
  //accentColor: Color(0xFF3BDAED),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: secondaryColor,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.black,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 30),
    headline2: TextStyle(fontSize: 28),
    headline3: TextStyle(fontSize: 26),
    headline4: TextStyle(fontSize: 24),
    headline5: TextStyle(fontSize: 22),
    headline6: TextStyle(fontSize: 20),
    subtitle1: TextStyle(fontSize: 18),
    subtitle2: TextStyle(fontSize: 16),
    bodyText1: TextStyle(fontSize: 14),
    bodyText2: TextStyle(fontSize: 12),
    caption: TextStyle(fontSize: 10),
  ),
);
