import 'package:flutter/material.dart';
import 'package:productive/assets/constants/colors.dart';

class AppTheme {
  static darkTheme() => ThemeData(
        
        fontFamily: 'Barlow',
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        drawerTheme: const DrawerThemeData(
          backgroundColor: scaffoldBackgroundColor,
        ),
        appBarTheme: const AppBarTheme(backgroundColor: appBarColor),
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: scaffoldBackgroundColor,
          onPrimary: onPrimaryColor,
          secondary: secondaryColor,
          onSecondary: onPrimaryColor,
          error: errorColor,
          onError: onPrimaryColor,
          background: scaffoldBackgroundColor,
          onBackground: onPrimaryColor,
          surface: scaffoldBackgroundColor,
          onSurface: onPrimaryColor,
        ),
        
      );
}
