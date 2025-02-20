import 'package:flutter/material.dart';
import 'package:places/colors/colors.dart';

TextTheme getLightTextTheme() {
  return TextTheme(
    bodySmall: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: kAppBarText,
    ),
    titleSmall: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: kAppBarText,
    ),
    titleLarge: TextStyle(
      fontSize: 35.0,
      fontWeight: FontWeight.w400,
      color: kAppBarText,
    ),
  );
}
