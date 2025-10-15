import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const Color background = Colors.blueGrey;
  static const Color cardStartColor = Color(0xFFE1F5FE); // Colors.lightBlue.shade50
  static const Color cardEndColor = Colors.white;
  static const Color shadowColor = Color(0x33000000); // Colors.black.withAlpha(51)
  static const Color verifiedBadgeColor = Colors.blue;
  static const Color verifiedIconColor = Colors.white;
  static const Color textColor = Colors.black;
  static const Color secondaryTextColor = Colors.grey;

  // Text Styles
  static const TextStyle nameTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle usernameTextStyle = TextStyle(
    fontSize: 16,
    color: secondaryTextColor,
  );

  static const TextStyle statLabelTextStyle = TextStyle(
    fontSize: 14,
    color: secondaryTextColor,
  );

  static const TextStyle statValueTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  // Spacing
  static const double spacingSmall = 4.0;
  static const double spacingMedium = 8.0;
  static const double spacingLarge = 16.0;
  static const double spacingXLarge = 24.0;

  static const SizedBox verticalSpaceSmall = SizedBox(height: spacingSmall);
  static const SizedBox verticalSpaceMedium = SizedBox(height: spacingMedium);
  static const SizedBox verticalSpaceLarge = SizedBox(height: spacingLarge);
  static const SizedBox verticalSpaceXLarge = SizedBox(height: spacingXLarge);

  // Borders and Shadows
  static final BorderRadius cardBorderRadius = BorderRadius.circular(15.0);
  static final BoxShadow cardShadow = BoxShadow(
    color: shadowColor,
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  );

  // Sizes
  static const double avatarRadius = 50.0;
  static const double badgeRadius = 15.0;
  static const double badgeIconSize = 20.0;
}
