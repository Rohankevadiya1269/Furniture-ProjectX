import 'package:flutter/material.dart';

// class SizeConfig {
//   static MediaQueryData? _mediaQueryData;
//   static double? screenWidth;
//   static double? screenHeight;
//   static double? defaultSize;
//   static Orientation? orientation;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData?.size.width;
//     screenHeight = _mediaQueryData?.size.height;
//     orientation = _mediaQueryData?.orientation;
//     // On iPhone 11 the defaultSize = 10 almost
//     // So if the screen size increase or decrease then our defaultSize also vary
//     defaultSize = orientation == Orientation.landscape
//         ? screenHeight * 0.024
//         : screenWidth * 0.024;
//   }
// }
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;

    // Check if screenWidth and screenHeight are not null before using them
    if (screenWidth != null && screenHeight != null) {
      defaultSize = orientation == Orientation.landscape
          ? screenHeight! * 0.024 // Use null assertion operator
          : screenWidth! * 0.024; // Use null assertion operator
    } else {
      // Provide a default value if screenWidth or screenHeight are null
      defaultSize = 0;
    }
  }
}
