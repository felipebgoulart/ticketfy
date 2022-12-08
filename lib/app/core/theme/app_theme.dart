

import 'package:flutter/material.dart';

import 'dark_theme.dart';
import 'light_theme.dart';

class AppTheme {
 static ThemeData lightMode() => LightTheme.call();

 static ThemeData darkMode() => DarkTheme.call();
}