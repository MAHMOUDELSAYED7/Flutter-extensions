//! ALIGNMENT EXTENSIONS
import 'package:flutter/material.dart';

extension AlignmentExtensions on Widget {
  // Center a widget
  Widget centered() => Center(child: this);

  // Align a widget to a specific alignment
  Widget aligned(Alignment alignment) => Align(
        alignment: alignment,
        child: this,
      );

  // Align a widget to the top left
  Widget alignTopLeft() => Align(
        alignment: Alignment.topLeft,
        child: this,
      );

  // Align a widget to the top right
  Widget alignTopRight() => Align(
        alignment: Alignment.topRight,
        child: this,
      );

  // Align a widget to the bottom left
  Widget alignBottomLeft() => Align(
        alignment: Alignment.bottomLeft,
        child: this,
      );

  // Align a widget to the bottom right
  Widget alignBottomRight() => Align(
        alignment: Alignment.bottomRight,
        child: this,
      );
}
