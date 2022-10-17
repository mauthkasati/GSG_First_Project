import 'package:flutter/material.dart';

mixin mix {
  static ThemeMode themeMode = ThemeMode.dark;
  static ThemeData themeData = ThemeData.dark();
  static bool isDark = false;
  static String conName = '';
  static int conNum = 0;
  static int qNum = 1;
  static TextEditingController getUser = TextEditingController();
  static TextEditingController getPass = TextEditingController();
  static String msg1 = '';
  static String msg2 = '';
  static bool check = false;
  static int score = 0;
  static String desc = '';
}
