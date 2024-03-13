import 'package:flutter/material.dart';
import 'package:servy_app2/src/constants/colors.dart';
import 'package:servy_app2/src/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

//--light theme--
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        foregroundColor: kWhiteColor,
        backgroundColor: kSecondaryColor,
        side: const BorderSide(color: kSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonheight)),
  );

//--dark theme--
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        foregroundColor: kSecondaryColor,
        backgroundColor: kWhiteColor,
        side: const BorderSide(color: kSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonheight)),
  );
}
