import 'dart:io';

import 'package:flutter/material.dart';

import 'custom_colors.dart';
import 'text_style.dart';

ThemeData appTheme() {
  ThemeData themeData;
  if (Platform.isAndroid) {
    themeData = ThemeData(
        primaryColor: CustomColors.primary,
        accentColor: Colors.orange,
        hintColor: CustomColors.black,
        dividerColor: Colors.white,
        buttonColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: CustomColors.primary,
        textTheme: TextTheme(
            subtitle: CustomTextStyle.sub_title, title: CustomTextStyle.title));
  } else if (Platform.isIOS) {
    themeData = ThemeData(
        primaryColor: CustomColors.primary,
        accentColor: Colors.orange,
        hintColor: CustomColors.black,
        dividerColor: Colors.white,
        buttonColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: CustomColors.primary,
        textTheme: TextTheme(
            subtitle: CustomTextStyle.sub_title, title: CustomTextStyle.title));
  }
  return themeData;
}
