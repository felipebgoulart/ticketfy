// import 'package:flutter/material.dart';

// import 'app_colors.dart';

// extension ThemeDataExtension on ThemeData {
  
//   Color get appSubTitleColor => AppColors.myColor;
// }

import 'package:flutter/material.dart';

import 'app_colors.dart';

class DarkTheme  {

  static call() {
    return ThemeData(
      useMaterial3: true,
      // scrollbarTheme: makeInputScrollbarTheme(),
      // appBarTheme: makeInputAppBarTheme(),
      // textTheme: makeInputTextTheme(),
      // fontFamily: 'ArcherPro',
      colorScheme: const ColorScheme(
        primary: AppColors.primaryColor,
        primaryContainer: Colors.black,
        secondary: AppColors.secondaryColor,
        secondaryContainer:Colors.black,
        surface: Colors.black,
        background:Colors.black,
        error: Colors.black,
        onPrimary:Colors.black,
        onSecondary:Colors.black,
        onSurface: Colors.black,
        onBackground:Colors.black,
        onError: Colors.black,
        brightness: Brightness.light,
      ),
      // disabledColor: MandicColors.disabledColor,
      // scaffoldBackgroundColor: Colors.transparent,
      primaryColor: AppColors.primaryColor,
      // primaryColorDark: MandicColors.primaryDarker,
      // primaryColorLight: MandicColors.primaryLight,
      // backgroundColor: MandicColors.background,
      // textButtonTheme: makeTextButtonTheme(),
      // checkboxTheme: makeInputCheckBoxTheme(),
      // shadowColor: MandicColors.shadowColor,
      // cardColor: Colors.white,
      // inputDecorationTheme: makeInputTextFieldTheme(),
    );
  }
}