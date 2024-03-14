import 'package:flutter/material.dart';
import 'package:servy_app2/src/constants/colors.dart';
import 'package:servy_app2/src/constants/sizes.dart';

class ToutLineButtonTheme {
  ToutLineButtonTheme._(); //to avoid creating instance

  //--light Theme --

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        foregroundColor: kSecondaryColor,
        side: const BorderSide(color: kSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonheight)),
  );

  //--Dark Theme --

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        foregroundColor: kWhiteColor,
        side: const BorderSide(color: kWhiteColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonheight)),
  );
}
