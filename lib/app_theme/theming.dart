import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:places/app_theme/text_theme.dart';
import 'package:places/colors/colors.dart';

///This theme is responsible for styling the app in light mode.
ThemeData getLightThemeData() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: kPrimary),
    fontFamily: GoogleFonts.roboto.toString(),
    textTheme: getLightTextTheme(),
  );
}
