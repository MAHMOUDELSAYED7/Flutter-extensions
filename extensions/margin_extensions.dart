//! MARGIN EXTENSIONS USING PADDING
import 'package:flutter/material.dart';

extension MarginExtensions on Widget {
  // Add padding to a widget with custom EdgeInsets, simulating a margin
  Widget withMargin(EdgeInsetsGeometry padding) => Padding(
        padding: padding,
        child: this,
      );

  // Add symmetric padding (vertical and horizontal)
  Widget withSymmetricMargin(
          {double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  // Add padding to all sides of a widget
  Widget withAllMargin(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  // Add padding to specific sides of a widget
  Widget withOnlyMargin({
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
