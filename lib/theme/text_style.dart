import 'dart:ui';

import 'package:flutter/material.dart';

import 'custom_colors.dart';

class CustomTextStyle {
  static const title = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: "Raleway-Regular",
      fontStyle: FontStyle.normal,
      fontSize: 25.0);

  static const textStyle = const TextStyle(
      color: CustomColors.primary_light,
      fontWeight: FontWeight.w700,
      fontFamily: "Raleway",
      fontStyle: FontStyle.normal,
      fontSize: 20.0);
  static const textStyle2 = const TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w400,
      fontFamily: "Raleway",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);
  static const sub_title = const TextStyle(
      color: Colors.white,
      fontFamily: "Raleway-Light",
      fontSize: 15.0);
  static const textStyle4 = const TextStyle(
      color: CustomColors.dark_grey,
      fontWeight: FontWeight.w300,
      fontFamily: "Raleway",
      fontStyle: FontStyle.normal,
      fontSize: 14.0);
  static const textStyle6 = const TextStyle(
      color: CustomColors.dark_grey,
      fontWeight: FontWeight.w300,
      fontFamily: "Raleway-Light",
      fontStyle: FontStyle.normal,
      fontSize: 12.0);
  static const titleB = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontFamily: "Raleway-Regular",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);
  static const subtitleB = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: "Raleway-Light",
      fontStyle: FontStyle.normal,
      fontSize: 10.0);
  static const subtitleC = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: "Raleway-Light",
      fontStyle: FontStyle.normal,
      fontSize: 13.0);

  static const boldColored = const TextStyle(
      color: CustomColors.primary_light,
      fontWeight: FontWeight.w300,
      fontFamily: "Raleway-Medium",
      fontStyle: FontStyle.normal,
      fontSize: 13.0);
}
