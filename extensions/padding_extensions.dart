//! PADDING EXTENSIONS
import 'package:flutter/material.dart';

extension PaddingExtensions on Widget {
  // Add padding to a widget with a custom EdgeInsets
  Widget withPadding(EdgeInsetsGeometry padding) => Padding(
        padding: padding,
        child: this,
      );

  // Add symmetric padding (vertical and horizontal)
  Widget withSymmetricPadding(
          {double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  // Add padding to all sides of a widget
  Widget withAllPadding(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  // Add padding to specific sides of a widget
  Widget withOnlyPadding({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}
