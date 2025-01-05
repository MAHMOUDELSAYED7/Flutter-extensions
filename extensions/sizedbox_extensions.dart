import 'package:flutter/material.dart';




//! SIZEDBOX EXTENSIONS
extension SizedBoxExtensions on Widget {
  // Add a fixed width to a widget
  Widget withWidth(double width) => SizedBox(
        width: width,
        child: this,
      );

  // Add a fixed height to a widget
  Widget withHeight(double height) => SizedBox(
        height: height,
        child: this,
      );

  // Add both fixed width and height to a widget
  Widget withSize({required double width, required double height}) => SizedBox(
        width: width,
        height: height,
        child: this,
      );

  // Add a square size to a widget (same width and height)
  Widget withSquareSize(double size) => SizedBox(
        width: size,
        height: size,
        child: this,
      );

  // Add a SizedBox with specific width and height but without a child
  Widget withEmptyBox({double width = 0.0, double height = 0.0}) => SizedBox(
        width: width,
        height: height,
      );

  // Add spacing above a widget
  Widget withVerticalSpacing(double height) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: height),
          this,
        ],
      );

  // Add spacing to the left of a widget
  Widget withHorizontalSpacing(double width) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: width),
          this,
        ],
      );
}
