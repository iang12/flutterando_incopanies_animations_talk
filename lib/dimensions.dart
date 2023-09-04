import 'package:flutter/material.dart';

//all components must use dimensions for size, paddgins or alignments to be responsive.

class Dimensions {
  static const double separatorHeight = 1.0;
  static const double titleTextSize = 30.0;

  static bool isTabletScreen(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    // The equivalent of the "smallestWidth" qualifier on Android.
    var smallestDimension = queryData.size.shortestSide;

    // Determine if we should use mobile layout or not. The
    // number 600 here is a common breakpoint for a typical
    // 7-inch tablet.
    return smallestDimension > 600;
  }

  static double getHeightSize(double? sizeInPixel, BuildContext context) {
    //The height size of the base screen.
    //The base screen is the screen of the tablet or the cellphone using to define the designs
    double baseScreenHeight = isTabletScreen(context) ? 768 : 812;

    if (isTabletScreen(context)) {
      //Getting the current screen height
      MediaQueryData queryData = MediaQuery.of(context);
      double currentScreenHeight = queryData.size.height;

      sizeInPixel ??= 0.0;

      //Expression to get the current height proportion
      return (sizeInPixel * (currentScreenHeight)) / baseScreenHeight;
    } else {
      double baseScreenWidth = isTabletScreen(context) ? 1024.0 : 375;

      MediaQueryData queryData = MediaQuery.of(context);
      double currentScreenWidth = queryData.size.width;

      sizeInPixel ??= 0.0;

      //Expression to get the current width proportion
      var result = (sizeInPixel * (currentScreenWidth)) / baseScreenWidth;
      return result > 0 ? result : 0;
    }
  }

  static double getWidthSize(double? sizeInPixel, BuildContext context) {
    //The width size of the base screen.
    //The base screen is the screen of the tablet using to define the designs
    double baseScreenWidth = isTabletScreen(context) ? 1024.0 : 375;

    //Getting the current screen width
    MediaQueryData queryData = MediaQuery.of(context);
    double currentScreenWidth = queryData.size.width;

    sizeInPixel ??= 0.0;

    //Expression to get the current width proportion
    var result = (sizeInPixel * (currentScreenWidth)) / baseScreenWidth;
    return result > 0 ? result : 0;
  }

  static EdgeInsets getEdgeInsets(BuildContext context, {double? top, double? bottom, double? left, double? right}) {
    return EdgeInsets.only(
      top: getHeightSize(top, context),
      bottom: getHeightSize(bottom, context),
      left: getWidthSize(left, context),
      right: getWidthSize(right, context),
    );
  }

  static EdgeInsets getEdgeInsetsSymmetric(BuildContext context, {double? vertical, double? horizontal}) {
    return EdgeInsets.symmetric(vertical: getHeightSize(vertical, context), horizontal: getWidthSize(horizontal, context));
  }

  static EdgeInsets getEdgeInsetsAll(BuildContext context, double size) {
    return EdgeInsets.only(
      top: getHeightSize(size, context),
      bottom: getHeightSize(size, context),
      left: getWidthSize(size, context),
      right: getWidthSize(size, context),
    );
  }

  static EdgeInsets getEdgeInsetsFromLTRB(BuildContext context, double left, double top, double right, double bottom) {
    return EdgeInsets.fromLTRB(
      getWidthSize(left, context),
      getHeightSize(top, context),
      getWidthSize(right, context),
      getHeightSize(bottom, context),
    );
  }

  static double getTextSize(context, double sizeInPixel) {
    return (isTabletScreen(context)) ? getHeightSize(sizeInPixel, context) : getWidthSize(sizeInPixel, context);
  }
}
