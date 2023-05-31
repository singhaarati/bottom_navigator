import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static getApplicationTheme() {
    return ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.red),
        fontFamily: "Montserrat",
        useMaterial3: true,

        //change app bar color

        appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 230, 28, 72),
            centerTitle: true,
            titleTextStyle: TextStyle(color: Colors.yellow, fontSize: 30)));
  }
}
