import 'dart:ui';

import 'package:flutter/material.dart';

class EnteColorScheme {
  // Background Colors
  final Color backgroundBase;
  final Color backgroundElevated;
  final Color backgroundElevated2;

  // Backdrop Colors
  final Color backdropBase;
  final Color backdropMuted;
  final Color backdropFaint;

  // Text Colors
  final Color textBase;
  final Color textMuted;
  final Color textFaint;
  final Color blurTextBase;

  // Fill Colors
  final Color fillBase;
  final Color fillBasePressed;
  final Color fillStrong;
  final Color fillMuted;
  final Color fillFaint;
  final Color fillFaintPressed;
  final Color fillBaseGrey;

  // Stroke Colors
  final Color strokeBase;
  final Color strokeMuted;
  final Color strokeFaint;
  final Color strokeFainter;
  final Color blurStrokeBase;
  final Color blurStrokeFaint;
  final Color blurStrokePressed;

  // Fixed Colors
  final Color primary700;
  final Color primary500;
  final Color primary400;
  final Color primary300;

  //warning colors
  final Color warning700;
  final Color warning500;
  final Color warning400;
  final Color warning800;
  final Color caution500;

  //golden colors
  final Color golden700;
  final Color golden500;

  //other colors
  final Color tabIcon;
  final List<Color> avatarColors;

  const EnteColorScheme(
    this.backgroundBase,
    this.backgroundElevated,
    this.backgroundElevated2,
    this.backdropBase,
    this.backdropMuted,
    this.backdropFaint,
    this.textBase,
    this.textMuted,
    this.textFaint,
    this.blurTextBase,
    this.fillBase,
    this.fillBasePressed,
    this.fillStrong,
    this.fillMuted,
    this.fillFaint,
    this.fillFaintPressed,
    this.fillBaseGrey,
    this.strokeBase,
    this.strokeMuted,
    this.strokeFaint,
    this.strokeFainter,
    this.blurStrokeBase,
    this.blurStrokeFaint,
    this.blurStrokePressed,
    this.tabIcon,
    this.avatarColors, {
    this.primary700 = _primary700,
    this.primary500 = _primary500,
    this.primary400 = _primary400,
    this.primary300 = _primary300,
    this.warning800 = _warning800,
    this.warning700 = _warning700,
    this.warning500 = _warning500,
    this.warning400 = _warning400,
    this.caution500 = _caution500,
    this.golden700 = _golden700,
    this.golden500 = _golden500,
  });
}

const EnteColorScheme lightScheme = EnteColorScheme(
  backgroundBaseLight,
  backgroundElevatedLight,
  backgroundElevated2Light,
  backdropBaseLight,
  backdropMutedLight,
  backdropFaintLight,
  textBaseLight,
  textMutedLight,
  textFaintLight,
  blurTextBaseLight,
  fillBaseLight,
  fillBasePressedLight,
  fillStrongLight,
  fillMutedLight,
  fillFaintLight,
  fillFaintPressedLight,
  fillBaseGreyLight,
  strokeBaseLight,
  strokeMutedLight,
  strokeFaintLight,
  strokeFainterLight,
  blurStrokeBaseLight,
  blurStrokeFaintLight,
  blurStrokePressedLight,
  tabIconLight,
  avatarLight,
);

const EnteColorScheme darkScheme = EnteColorScheme(
  backgroundBaseDark,
  backgroundElevatedDark,
  backgroundElevated2Dark,
  backdropBaseDark,
  backdropMutedDark,
  backdropFaintDark,
  textBaseDark,
  textMutedDark,
  textFaintDark,
  blurTextBaseDark,
  fillBaseDark,
  fillBasePressedDark,
  fillStrongDark,
  fillMutedDark,
  fillFaintDark,
  fillFaintPressedDark,
  fillBaseGreyDark,
  strokeBaseDark,
  strokeMutedDark,
  strokeFaintDark,
  strokeFainterDark,
  blurStrokeBaseDark,
  blurStrokeFaintDark,
  blurStrokePressedDark,
  tabIconDark,
  avatarDark,
);

// Background Colors
const Color backgroundBaseLight = Color.fromRGBO(248, 240, 255, 1); // Light Purple
const Color backgroundElevatedLight = Color.fromRGBO(248, 240, 255, 1);
const Color backgroundElevated2Light = Color.fromRGBO(246, 238, 253, 1);

const Color backgroundBaseDark = Color.fromRGBO(15, 3, 39, 1); // Darker Blue-Purple
const Color backgroundElevatedDark = Color.fromRGBO(21, 7, 47, 1);
const Color backgroundElevated2Dark = Color.fromRGBO(27, 11, 55, 1);

// Backdrop Colors
const Color backdropBaseLight = Color.fromRGBO(248, 240, 255, 0.92);
const Color backdropMutedLight = Color.fromRGBO(248, 240, 255, 0.75);
const Color backdropFaintLight = Color.fromRGBO(248, 240, 255, 0.30);

const Color backdropBaseDark = Color.fromRGBO(15, 3, 39, 0.90);
const Color backdropMutedDark = Color.fromRGBO(15, 3, 39, 0.65);
const Color backdropFaintDark = Color.fromRGBO(15, 3, 39, 0.20);

// Text Colors
const Color textBaseLight = Color.fromRGBO(104, 24, 165, 1); // Purple
const Color textMutedLight = Color.fromRGBO(104, 24, 165, 0.6);
const Color textFaintLight = Color.fromRGBO(104, 24, 165, 0.5);
const Color blurTextBaseLight = Color.fromRGBO(104, 24, 165, 0.65);

const Color textBaseDark = Color.fromRGBO(224, 160, 255, 1); // Light Purple
const Color textMutedDark = Color.fromRGBO(224, 160, 255, 0.7);
const Color textFaintDark = Color.fromRGBO(224, 160, 255, 0.5);
const Color blurTextBaseDark = Color.fromRGBO(224, 160, 255, 0.95);

// Fill Colors
const Color fillBaseLight = Color.fromRGBO(104, 24, 165, 1); // Purple
const Color fillBasePressedLight = Color.fromRGBO(104, 24, 165, 0.87);
const Color fillStrongLight = Color.fromRGBO(104, 24, 165, 0.24);
const Color fillMutedLight = Color.fromRGBO(104, 24, 165, 0.12);
const Color fillFaintLight = Color.fromRGBO(104, 24, 165, 0.04);
const Color fillFaintPressedLight = Color.fromRGBO(104, 24, 165, 0.08);
const Color fillBaseGreyLight = Color.fromRGBO(242, 242, 242, 1); // Keep this as it's a neutral grey

const Color fillBaseDark = Color.fromRGBO(104, 24, 165, 1); // Light Purple
const Color fillBasePressedDark = Color.fromRGBO(224, 160, 255, 0.9);
const Color fillStrongDark = Color.fromRGBO(224, 160, 255, 0.32);
const Color fillMutedDark = Color.fromRGBO(224, 160, 255, 0.16);
const Color fillFaintDark = Color.fromRGBO(224, 160, 255, 0.12);
const Color fillFaintPressedDark = Color.fromRGBO(224, 160, 255, 0.06);
const Color fillBaseGreyDark = Color.fromRGBO(66, 66, 66, 1);

// Stroke Colors
const Color strokeBaseLight = Color.fromRGBO(104, 24, 165, 1); // Purple
const Color strokeMutedLight = Color.fromRGBO(104, 24, 165, 0.24);
const Color strokeFaintLight = Color.fromRGBO(104, 24, 165, 0.12);
const Color strokeFainterLight = Color.fromRGBO(104, 24, 165, 0.06);
const Color blurStrokeBaseLight = Color.fromRGBO(104, 24, 165, 0.65);
const Color blurStrokeFaintLight = Color.fromRGBO(104, 24, 165, 0.08);
const Color blurStrokePressedLight = Color.fromRGBO(104, 24, 165, 0.50);

const Color strokeBaseDark = Color.fromRGBO(224, 160, 255, 1); // Light Purple
const Color strokeMutedDark = Color.fromRGBO(224, 160, 255, 0.24);
const Color strokeFaintDark = Color.fromRGBO(224, 160, 255, 0.16);
const Color strokeFainterDark = Color.fromRGBO(224, 160, 255, 0.08);
const Color blurStrokeBaseDark = Color.fromRGBO(224, 160, 255, 0.90);
const Color blurStrokeFaintDark = Color.fromRGBO(224, 160, 255, 0.06);
const Color blurStrokePressedDark = Color.fromRGBO(224, 160, 255, 0.50);

// Other colors
const Color tabIconLight = Color.fromRGBO(104, 24, 165, 0.85); // Purple
const Color tabIconDark = Color.fromRGBO(224, 160, 255, 0.80);

// Fixed Colors

const Color fixedStrokeMutedWhite = Color.fromRGBO(255, 255, 255, 0.50);
const Color strokeSolidMutedLight = Color.fromRGBO(147, 147, 147, 1);
const Color strokeSolidFaintLight = Color.fromRGBO(221, 221, 221, 1);

const Color _primary700 = Color.fromRGBO(104, 24, 165, 1); // Dark Purple
const Color _primary500 = Color.fromRGBO(135, 45, 206, 1); // Medium Purple
const Color _primary400 = Color.fromRGBO(166, 86, 247, 1); // Light Purple
const Color _primary300 = Color.fromRGBO(197, 127, 248, 1); // Very Light Purple

const Color _warning700 = Color.fromRGBO(234, 63, 63, 1);
const Color _warning500 = Color.fromRGBO(255, 101, 101, 1);
const Color warning500 = Color.fromRGBO(255, 101, 101, 1);
const Color _warning400 = Color.fromRGBO(255, 111, 111, 1);
const Color _warning800 = Color(0xFFF53434);

const Color _caution500 = Color.fromRGBO(255, 194, 71, 1);

const Color _golden700 = Color(0xFFFDB816);
const Color _golden500 = Color(0xFFFFC336);

const List<Color> avatarLight = [
  Color.fromRGBO(118, 84, 154, 1),
  Color.fromRGBO(223, 120, 97, 1),
  Color.fromRGBO(148, 180, 159, 1),
  Color.fromRGBO(135, 162, 251, 1),
  Color.fromRGBO(198, 137, 198, 1),
  Color.fromRGBO(198, 137, 198, 1),
  Color.fromRGBO(50, 82, 136, 1),
  Color.fromRGBO(133, 180, 224, 1),
  Color.fromRGBO(193, 163, 163, 1),
  Color.fromRGBO(193, 163, 163, 1),
  Color.fromRGBO(66, 97, 101, 1),
  Color.fromRGBO(66, 97, 101, 1),
  Color.fromRGBO(66, 97, 101, 1),
  Color.fromRGBO(221, 157, 226, 1),
  Color.fromRGBO(130, 171, 139, 1),
  Color.fromRGBO(155, 187, 232, 1),
  Color.fromRGBO(143, 190, 190, 1),
  Color.fromRGBO(138, 195, 161, 1),
  Color.fromRGBO(168, 176, 242, 1),
  Color.fromRGBO(176, 198, 149, 1),
  Color.fromRGBO(233, 154, 173, 1),
  Color.fromRGBO(209, 132, 132, 1),
  Color.fromRGBO(120, 181, 167, 1),
];

const List<Color> avatarDark = [
  Color.fromRGBO(118, 84, 154, 1),
  Color.fromRGBO(223, 120, 97, 1),
  Color.fromRGBO(148, 180, 159, 1),
  Color.fromRGBO(135, 162, 251, 1),
  Color.fromRGBO(198, 137, 198, 1),
  Color.fromRGBO(147, 125, 194, 1),
  Color.fromRGBO(50, 82, 136, 1),
  Color.fromRGBO(133, 180, 224, 1),
  Color.fromRGBO(193, 163, 163, 1),
  Color.fromRGBO(225, 160, 89, 1),
  Color.fromRGBO(66, 97, 101, 1),
  Color.fromRGBO(107, 119, 178, 1),
  Color.fromRGBO(149, 127, 239, 1),
  Color.fromRGBO(221, 157, 226, 1),
  Color.fromRGBO(130, 171, 139, 1),
  Color.fromRGBO(155, 187, 232, 1),
  Color.fromRGBO(143, 190, 190, 1),
  Color.fromRGBO(138, 195, 161, 1),
  Color.fromRGBO(168, 176, 242, 1),
  Color.fromRGBO(176, 198, 149, 1),
  Color.fromRGBO(233, 154, 173, 1),
  Color.fromRGBO(209, 132, 132, 1),
  Color.fromRGBO(120, 181, 167, 1),
];
