import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData getTheme() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 35,
        color: kPrimaryTextColor,
        fontWeight: FontWeight.w500,
      ),
      headline2: TextStyle(
        fontSize: 20,
        color: kPrimaryTextColor,
      ),
      headline3: TextStyle(
        fontSize: 20,
        color: kPrimaryTextColor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
