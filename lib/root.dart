

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/colors.dart';
import 'screens/splash/splash.dart';


class Root extends StatelessWidget {
  const Root({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    const displayTextStyle = TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 22,
      color: darkBlack,
    );
    const titleTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: darkBlack,
    );
    const labelTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: darkBlack,
    );
    const bodyTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: darkBlack,
    );
    return GetMaterialApp(
      title: 'VWeb',
      debugShowCheckedModeBanner: false,
      fallbackLocale: const Locale('en', 'Us'),


      theme: ThemeData(
        fontFamily: "custom_font",
        // appBarTheme: const AppBarTheme(
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //       systemNavigationBarColor: navigationBarColor,
        //       systemNavigationBarDividerColor: white,
        //       systemNavigationBarContrastEnforced: true,
        //       systemNavigationBarIconBrightness: Brightness.light),
        // ),
        textTheme: TextTheme(
          displayLarge: displayTextStyle,
          displayMedium: displayTextStyle.copyWith(
            fontSize: 20,
          ),
          displaySmall: displayTextStyle.copyWith(
            fontSize: 18,
          ),
          titleLarge: titleTextStyle,
          titleMedium: titleTextStyle.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
          titleSmall: titleTextStyle.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          labelLarge: labelTextStyle,
          labelMedium: labelTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          labelSmall: labelTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0,
            fontSize: 14,
          ),
          bodyLarge: bodyTextStyle,
          bodyMedium: bodyTextStyle.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
          bodySmall: bodyTextStyle.copyWith(
            fontWeight: FontWeight.w200,
            fontSize: 14,
          ),
        ),
        primarySwatch: primarySwatch,
        scaffoldBackgroundColor: white,
        primaryColor: primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: white,
          surfaceTintColor: white,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: white,
          surfaceTintColor: white,
        ),
        cardTheme: const CardTheme(
          color: white,
          surfaceTintColor: white,
        ),
        progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: primaryColor),
      ),
      home: const SplashScreen(),
    );
  }
}

