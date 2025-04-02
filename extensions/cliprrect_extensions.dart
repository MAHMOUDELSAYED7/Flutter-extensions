import 'package:flutter/material.dart';

extension ClipRRectExtensions on Widget {
  // Create a new ClipRRect with circular border radius
  Widget circular(double radius) => copyWith(
        borderRadius: BorderRadius.circular(radius),
      );

  // Create a new ClipRRect with vertical radius configuration
  Widget verticalRadius({double top = 0, double bottom = 0}) => copyWith(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(top),
          bottom: Radius.circular(bottom),
        ),
      );

  // Create a new ClipRRect with horizontal radius configuration
  Widget horizontalRadius({double left = 0, double right = 0}) => copyWith(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(left),
          right: Radius.circular(right),
        ),
      );

  // Create a new ClipRRect with specific corner radii
  Widget only({
    double topLeft = 0,
    double topRight = 0,
    double bottomLeft = 0,
    double bottomRight = 0,
  }) =>
      copyWith(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topRight),
          bottomLeft: Radius.circular(bottomLeft),
          bottomRight: Radius.circular(bottomRight),
        ),
      );

  // Create a copy with modified properties
  Widget copyWith({
    Key? key,
    BorderRadius? borderRadius,
    CustomClipper<RRect>? clipper,
    Clip? clipBehavior,
    Widget? child,
  }) {
    return ClipRRect(
      key: key,
      borderRadius: borderRadius ?? BorderRadius.zero,
      clipper: clipper,
      clipBehavior: clipBehavior ?? Clip.antiAlias,
      child: this,
    );
  }

  // Add rounded top corners
  Widget topRounded(double radius) => copyWith(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
        ),
      );

  // Add rounded bottom corners
  Widget bottomRounded(double radius) => copyWith(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        ),
      );

  // Add rounded left corners
  Widget leftRounded(double radius) => copyWith(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
        ),
      );

  // Add rounded right corners
  Widget rightRounded(double radius) => copyWith(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        ),
      );
}
